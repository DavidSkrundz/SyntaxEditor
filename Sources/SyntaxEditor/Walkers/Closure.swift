import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(ClosureSignatureSyntax, [
		("attributes", AttributeListSyntax),
		("capture", ClosureCaptureClauseSyntax?),
		("parameterClause", ClosureSignatureSyntax.ParameterClause?),
		("effectSpecifiers", TypeEffectSpecifiersSyntax?),
		("returnClause", ReturnClauseSyntax?),
		("inKeyword", TokenSyntax),
	])
	#DefineEnumWalker(ClosureSignatureSyntax.ParameterClause, [
		("simpleInput", ClosureShorthandParameterListSyntax),
		("parameterClause", ClosureParameterClauseSyntax),
	])

	#DefineStructWalker(ClosureCaptureClauseSyntax, [
		("leftSquare", TokenSyntax),
		("items", ClosureCaptureListSyntax),
		("rightSquare", TokenSyntax),
	])

	#DefineListWalker(ClosureCaptureListSyntax, ClosureCaptureSyntax)
	#DefineStructWalker(ClosureCaptureSyntax, [
		("specifier", ClosureCaptureSpecifierSyntax?),
		("name", TokenSyntax?),
		("equal", TokenSyntax?),
		("expression", ExprSyntax),
		("trailingComma", TokenSyntax?),
	])

	#DefineStructWalker(ClosureCaptureSpecifierSyntax, [
		("specifier", TokenSyntax),
		("leftParen", TokenSyntax?),
		("detail", TokenSyntax?),
		("rightParen", TokenSyntax?),
	])

	#DefineListWalker(ClosureShorthandParameterListSyntax, ClosureShorthandParameterSyntax)
	#DefineStructWalker(ClosureShorthandParameterSyntax, [
		("name", TokenSyntax),
		("trailingComma", TokenSyntax?),
	])

	#DefineStructWalker(ClosureParameterClauseSyntax, [
		("leftParen", TokenSyntax),
		("parameters", ClosureParameterListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineListWalker(ClosureParameterListSyntax, ClosureParameterSyntax)
	#DefineStructWalker(ClosureParameterSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("firstName", TokenSyntax),
		("secondName", TokenSyntax?),
		("colon", TokenSyntax?),
		("type", TypeSyntax?),
		("ellipsis", TokenSyntax?),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineListWalker(MultipleTrailingClosureElementListSyntax, MultipleTrailingClosureElementSyntax)
	#DefineStructWalker(MultipleTrailingClosureElementSyntax, [
		("label", TokenSyntax),
		("colon", TokenSyntax),
		("closure", ClosureExprSyntax),
	])
}
