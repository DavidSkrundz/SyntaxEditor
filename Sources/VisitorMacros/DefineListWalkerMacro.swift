import SwiftSyntax
import SwiftSyntaxMacros

struct DefineListWalkerMacro: DeclarationMacro {
	static func expansion(of node: some FreestandingMacroExpansionSyntax,
						  in context: some MacroExpansionContext) throws -> [DeclSyntax] {
		// Require macro arguments
		var arguments = node.arguments.makeIterator()
		guard let listType = GetArgumentType(&arguments) else {
			throw Error.message("Argument must be a `Type`")
		}
		guard let elementType = GetArgumentType(&arguments) else {
			throw Error.message("Argument must be a `Type`")
		}
		guard case .none = arguments.next() else {
			throw Error.message("Too many arguments")
		}

		// Compute argument derivatives
		let walkFuncName = WalkFunctionNameFromType(listType)
		let visitFuncName = VisitFunctionNameFromType(elementType)

		return ["""
		public static func \(raw: walkFuncName)(_ ctx: Context, _ syn: \(raw: listType.typeName)) throws -> \(raw: listType.typeName) {
			return \(raw: listType.typeName)(try syn.map { try \(raw: visitFuncName)(ctx, $0) })	
		}
		"""]
	}
}
