import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(DifferentiableAttributeArgumentsSyntax, [
		("kindSpecifier", TokenSyntax?),
		("kindSpecifierComma", TokenSyntax?),
		("arguments", DifferentiabilityWithRespectToArgumentSyntax?),
		("argumentsComma", TokenSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
	])

	#DefineStructWalker(DifferentiabilityWithRespectToArgumentSyntax, [
		("wrtLabel", TokenSyntax),
		("colon", TokenSyntax),
		("arguments", DifferentiabilityWithRespectToArgumentSyntax.Arguments),
	])
	#DefineEnumWalker(DifferentiabilityWithRespectToArgumentSyntax.Arguments, [
		("argument", DifferentiabilityArgumentSyntax),
		("argumentList", DifferentiabilityArgumentsSyntax),
	])

	#DefineStructWalker(DifferentiabilityArgumentsSyntax, [
		("leftParen", TokenSyntax),
		("arguments", DifferentiabilityArgumentListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineListWalker(DifferentiabilityArgumentListSyntax, DifferentiabilityArgumentSyntax)
	#DefineStructWalker(DifferentiabilityArgumentSyntax, [
		("argument", TokenSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(DerivativeAttributeArgumentsSyntax, [
		("ofLabel", TokenSyntax),
		("colon", TokenSyntax),
		("originalDeclName", ExprSyntax),
		("period", TokenSyntax?),
		("accessorSpecifier", TokenSyntax?),
		("comma", TokenSyntax?),
		("arguments", DifferentiabilityWithRespectToArgumentSyntax?),
	])
}
