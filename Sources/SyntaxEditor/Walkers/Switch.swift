import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(SwitchCaseListSyntax, SwitchCaseListSyntax.Element)
	#DefineEnumWalker(SwitchCaseListSyntax.Element, [
		("switchCase", SwitchCaseSyntax),
		("ifConfigDecl", IfConfigDeclSyntax),
	])

	#DefineStructWalker(SwitchCaseSyntax, [
		("attribute", AttributeSyntax?),
		("label", SwitchCaseSyntax.Label),
		("statements", CodeBlockItemListSyntax),
	])
	#DefineEnumWalker(SwitchCaseSyntax.Label, [
		("default", SwitchDefaultLabelSyntax),
		("case", SwitchCaseLabelSyntax),
	])


	#DefineStructWalker(SwitchDefaultLabelSyntax, [
		("defaultKeyword", TokenSyntax),
		("colon", TokenSyntax),
	])

	#DefineStructWalker(SwitchCaseLabelSyntax, [
		("caseKeyword", TokenSyntax),
		("caseItems", SwitchCaseItemListSyntax),
		("colon", TokenSyntax),
	])

	#DefineListWalker(SwitchCaseItemListSyntax, SwitchCaseItemSyntax)
	#DefineStructWalker(SwitchCaseItemSyntax, [
		("pattern", PatternSyntax),
		("whereClause", WhereClauseSyntax?),
		("trailingComma", TokenSyntax?),
	])
}
