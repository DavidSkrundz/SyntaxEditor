import SwiftSyntax
import SwiftSyntaxMacros

struct DefineEnumWalkerMacro: DeclarationMacro {
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
		guard arguments.next() == nil else {
			throw Error.message("Too many arguments")
		}

		// Compute argument derivatives
		let walkFuncName = WalkFunctionNameFromType(type)

		let cases = elements.map({
			let visitFuncName = VisitFunctionNameFromType($0.1)
			return "case .\($0.0)(let syn): return .\($0.0)(try \(visitFuncName)(ctx, syn))"
		}).joined()

		return ["""
		public static func \(raw: walkFuncName)(_ ctx: Context, _ syn: \(raw: type.typeName)) throws -> \(raw: type.typeName) {
			switch syn { \(raw: cases) }
		}
		"""]
	}
}
