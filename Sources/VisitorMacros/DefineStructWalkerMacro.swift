import SwiftSyntax
import SwiftSyntaxMacros

struct DefineStructWalkerMacro: DeclarationMacro {
	static func expansion(of node: some FreestandingMacroExpansionSyntax,
						  in context: some MacroExpansionContext) throws -> [DeclSyntax] {
		// Require macro arguments
		var arguments = node.arguments.makeIterator()
		guard let type = GetArgumentType(&arguments) else {
			throw Error.message("Argument must be a `Type`")
		}
		guard let elements = GetArgumentStringTypeTupleArray(&arguments) else {
			throw Error.message("Argument must be `[(String, Type)]`")
		}
		guard case .none = arguments.next() else {
			throw Error.message("Too many arguments")
		}

		// Compute argument derivatives
		let walkFuncName = WalkFunctionNameFromType(type)

		let assignments = elements.map({
			let visitFuncName = VisitFunctionNameFromType($0.1)

			switch $0.1 {
				case .type(_), .member(_):
					return "syn.\($0.0) = try \(visitFuncName)(ctx, syn.\($0.0))"
				case .optional(_):
					return "syn.\($0.0) = try syn.\($0.0).map { try \(visitFuncName)(ctx, $0) }"
			}
		}).joined()

		return ["""
		public static func \(raw: walkFuncName)(_ ctx: Context, _ syn: \(raw: type.typeName)) throws -> \(raw: type.typeName) {
			var syn = syn
			\(raw: assignments)
			return syn
		}
		"""]
	}
}
