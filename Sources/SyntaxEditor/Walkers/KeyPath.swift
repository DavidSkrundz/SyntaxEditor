import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(KeyPathComponentListSyntax, KeyPathComponentSyntax)
	#DefineStructWalker(KeyPathComponentSyntax, [
		("period", TokenSyntax?),
		("component", KeyPathComponentSyntax.Component),
	])
	#DefineEnumWalker(KeyPathComponentSyntax.Component, [
		("property", KeyPathPropertyComponentSyntax),
		("subscript", KeyPathSubscriptComponentSyntax),
		("optional", KeyPathOptionalComponentSyntax),
	])

	#DefineStructWalker(KeyPathPropertyComponentSyntax, [
		("declName", DeclReferenceExprSyntax),
		("genericArgumentClause", GenericArgumentClauseSyntax?),
	])

	#DefineStructWalker(KeyPathSubscriptComponentSyntax, [
		("leftSquare", TokenSyntax),
		("arguments", LabeledExprListSyntax),
		("rightSquare", TokenSyntax),
	])

	#DefineStructWalker(KeyPathOptionalComponentSyntax, [
		("questionOrExclamationMark", TokenSyntax),
	])
}
