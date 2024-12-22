import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(ArrayElementListSyntax, ArrayElementSyntax)
	#DefineStructWalker(ArrayElementSyntax, [
		("expression", ExprSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineEnumWalker(DictionaryExprSyntax.Content, [
		("colon", TokenSyntax),
		("elements", DictionaryElementListSyntax),
	])
	#DefineListWalker(DictionaryElementListSyntax, DictionaryElementSyntax)
	#DefineStructWalker(DictionaryElementSyntax, [
		("key", ExprSyntax),
		("colon", TokenSyntax),
		("value", ExprSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineListWalker(EnumCaseElementListSyntax, EnumCaseElementSyntax)
	#DefineStructWalker(EnumCaseElementSyntax, [
		("name", TokenSyntax),
		("parameterClause", EnumCaseParameterClauseSyntax?),
		("rawValue", InitializerClauseSyntax?),
		("trailingComma", TokenSyntax?),
	])

	#DefineStructWalker(EnumCaseParameterClauseSyntax, [
		("leftParen", TokenSyntax),
		("parameters", EnumCaseParameterListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineListWalker(EnumCaseParameterListSyntax, EnumCaseParameterSyntax)
	#DefineStructWalker(EnumCaseParameterSyntax, [
		("modifiers", DeclModifierListSyntax),
		("firstName", TokenSyntax?),
		("secondName", TokenSyntax?),
		("colon", TokenSyntax?),
		("type", TypeSyntax),
		("defaultValue", InitializerClauseSyntax?),
		("trailingComma", TokenSyntax?),
	])
}
