import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(FunctionSignatureSyntax, [
		("parameterClause", FunctionParameterClauseSyntax),
		("effectSpecifiers", FunctionEffectSpecifiersSyntax?),
		("returnClause", ReturnClauseSyntax?),
	])

	#DefineStructWalker(FunctionParameterClauseSyntax, [
		("leftParen", TokenSyntax),
		("parameters", FunctionParameterListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineListWalker(FunctionParameterListSyntax, FunctionParameterSyntax)
	#DefineStructWalker(FunctionParameterSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("firstName", TokenSyntax),
		("secondName", TokenSyntax?),
		("colon", TokenSyntax),
		("type", TypeSyntax),
		("ellipsis", TokenSyntax?),
		("defaultValue", InitializerClauseSyntax?),
		("trailingComma", TokenSyntax?),
	])

	#DefineStructWalker(FunctionEffectSpecifiersSyntax, [
		("asyncSpecifier", TokenSyntax?),
		("throwsClause", ThrowsClauseSyntax?),
	])
}
