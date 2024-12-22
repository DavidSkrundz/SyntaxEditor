import SwiftSyntax
import SwiftSyntaxMacros

struct DefineSubtypeWalkerMacro: DeclarationMacro {
	static func expansion(of node: some FreestandingMacroExpansionSyntax,
						  in context: some MacroExpansionContext) throws -> [DeclSyntax] {
		// Require macro arguments
		var arguments = node.arguments.makeIterator()
		guard let baseType = GetArgumentType(&arguments) else {
			throw Error.message("Argument must be a `Type`")
		}
		guard let enumType = GetArgumentType(&arguments) else {
			throw Error.message("Argument must be a `Type`")
		}
		guard let elements = GetArgumentStringTypeTupleArray(&arguments) else {
			throw Error.message("Argument must be `[(String, Type)]`")
		}
		guard case .none = arguments.next() else {
			throw Error.message("Too many arguments")
		}

		// Compute argument derivatives
		let walkFuncName = WalkFunctionNameFromType(baseType)

		let cases = elements.map({
			let visitFuncName = VisitFunctionNameFromType($0.1)
			return "case .\($0.0)(let syn): return \(baseType.typeName)(try \(visitFuncName)(ctx, syn))"
		}).joined()

		return ["""
		public static func \(raw: walkFuncName)(_ ctx: Context, _ syn: \(raw: baseType.typeName)) throws -> \(raw: baseType.typeName) {
			switch syn.as(\(raw: enumType.typeName).self) { \(raw: cases) }
		}
		"""]
	}
}
