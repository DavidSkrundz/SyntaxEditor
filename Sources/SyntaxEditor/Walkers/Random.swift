import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(SimpleStringLiteralSegmentListSyntax, StringSegmentSyntax)
	#DefineStructWalker(StringSegmentSyntax, [
		("content", TokenSyntax),
	])

	#DefineListWalker(StringLiteralSegmentListSyntax, StringLiteralSegmentListSyntax.Element)
	#DefineEnumWalker(StringLiteralSegmentListSyntax.Element, [
		("stringSegment", StringSegmentSyntax),
		("expressionSegment", ExpressionSegmentSyntax),
	])

	#DefineStructWalker(ExpressionSegmentSyntax, [
		("backslash", TokenSyntax),
		("pounds", TokenSyntax?),
		("leftParen", TokenSyntax),
		("expressions", LabeledExprListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineStructWalker(DeinitializerEffectSpecifiersSyntax, [
		("asyncSpecifier", TokenSyntax?),
	])

	#DefineListWalker(ImportPathComponentListSyntax, ImportPathComponentSyntax)
	#DefineStructWalker(ImportPathComponentSyntax, [
		("name", TokenSyntax),
		("trailingPeriod", TokenSyntax?),
	])

	#DefineStructWalker(OperatorPrecedenceAndTypesSyntax, [
		("colon", TokenSyntax),
		("precedenceGroup", TokenSyntax),
		("designatedTypes", DesignatedTypeListSyntax),
	])

	#DefineListWalker(DesignatedTypeListSyntax, DesignatedTypeSyntax)
	#DefineStructWalker(DesignatedTypeSyntax, [
		("leadingComma", TokenSyntax),
		("name", TokenSyntax),
	])

	#DefineStructWalker(PoundSourceLocationArgumentsSyntax, [
		("fileLabel", TokenSyntax),
		("fileColon", TokenSyntax),
		("fileName", SimpleStringLiteralExprSyntax),
		("comma", TokenSyntax),
		("lineLabel", TokenSyntax),
		("lineColon", TokenSyntax),
		("lineNumber", TokenSyntax),
	])

	#DefineListWalker(PrecedenceGroupAttributeListSyntax, PrecedenceGroupAttributeListSyntax.Element)
	#DefineEnumWalker(PrecedenceGroupAttributeListSyntax.Element, [
		("precedenceGroupRelation", PrecedenceGroupRelationSyntax),
		("precedenceGroupAssignment", PrecedenceGroupAssignmentSyntax),
		("precedenceGroupAssociativity", PrecedenceGroupAssociativitySyntax),
	])

	#DefineStructWalker(PrecedenceGroupRelationSyntax, [
		("higherThanOrLowerThanLabel", TokenSyntax),
		("colon", TokenSyntax),
		("precedenceGroups", PrecedenceGroupNameListSyntax),
	])

	#DefineStructWalker(PrecedenceGroupAssignmentSyntax, [
		("assignmentLabel", TokenSyntax),
		("colon", TokenSyntax),
		("value", TokenSyntax),
	])

	#DefineStructWalker(PrecedenceGroupAssociativitySyntax, [
		("associativityLabel", TokenSyntax),
		("colon", TokenSyntax),
		("value", TokenSyntax),
	])

	#DefineListWalker(PrecedenceGroupNameListSyntax, PrecedenceGroupNameSyntax)
	#DefineStructWalker(PrecedenceGroupNameSyntax, [
		("name", TokenSyntax),
		("trailingComma", TokenSyntax?),
	])
}
