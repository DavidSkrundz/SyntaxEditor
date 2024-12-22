@_spi(ExperimentalLanguageFeatures)
import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineSubtypeWalker(ExprSyntax, ExprSyntaxEnum, [
		("arrayExpr", ArrayExprSyntax),
		("arrowExpr", ArrowExprSyntax),
		("asExpr", AsExprSyntax),
		("assignmentExpr", AssignmentExprSyntax),
		("awaitExpr", AwaitExprSyntax),
		("binaryOperatorExpr", BinaryOperatorExprSyntax),
		("booleanLiteralExpr", BooleanLiteralExprSyntax),
		("borrowExpr", BorrowExprSyntax),
		("_canImportExpr", d_CanImportExprSyntax),
		("_canImportVersionInfo", d_CanImportVersionInfoSyntax),
		("closureExpr", ClosureExprSyntax),
		("consumeExpr", ConsumeExprSyntax),
		("copyExpr", CopyExprSyntax),
		("declReferenceExpr", DeclReferenceExprSyntax),
		("dictionaryExpr", DictionaryExprSyntax),
		("discardAssignmentExpr", DiscardAssignmentExprSyntax),
		("doExpr", DoExprSyntax),
		("editorPlaceholderExpr", EditorPlaceholderExprSyntax),
		("floatLiteralExpr", FloatLiteralExprSyntax),
		("forceUnwrapExpr", ForceUnwrapExprSyntax),
		("functionCallExpr", FunctionCallExprSyntax),
		("genericSpecializationExpr", GenericSpecializationExprSyntax),
		("ifExpr", IfExprSyntax),
		("inOutExpr", InOutExprSyntax),
		("infixOperatorExpr", InfixOperatorExprSyntax),
		("integerLiteralExpr", IntegerLiteralExprSyntax),
		("isExpr", IsExprSyntax),
		("keyPathExpr", KeyPathExprSyntax),
		("macroExpansionExpr", MacroExpansionExprSyntax),
		("memberAccessExpr", MemberAccessExprSyntax),
		("missingExpr", MissingExprSyntax),
		("nilLiteralExpr", NilLiteralExprSyntax),
		("optionalChainingExpr", OptionalChainingExprSyntax),
		("packElementExpr", PackElementExprSyntax),
		("packExpansionExpr", PackExpansionExprSyntax),
		("patternExpr", PatternExprSyntax),
		("postfixIfConfigExpr", PostfixIfConfigExprSyntax),
		("postfixOperatorExpr", PostfixOperatorExprSyntax),
		("prefixOperatorExpr", PrefixOperatorExprSyntax),
		("regexLiteralExpr", RegexLiteralExprSyntax),
		("sequenceExpr", SequenceExprSyntax),
		("simpleStringLiteralExpr", SimpleStringLiteralExprSyntax),
		("stringLiteralExpr", StringLiteralExprSyntax),
		("subscriptCallExpr", SubscriptCallExprSyntax),
		("superExpr", SuperExprSyntax),
		("switchExpr", SwitchExprSyntax),
		("ternaryExpr", TernaryExprSyntax),
		("tryExpr", TryExprSyntax),
		("tupleExpr", TupleExprSyntax),
		("typeExpr", TypeExprSyntax),
		("unresolvedAsExpr", UnresolvedAsExprSyntax),
		("unresolvedIsExpr", UnresolvedIsExprSyntax),
		("unresolvedTernaryExpr", UnresolvedTernaryExprSyntax),
	])

	#DefineStructWalker(ArrayExprSyntax, [
		("leftSquare", TokenSyntax),
		("elements", ArrayElementListSyntax),
		("rightSquare", TokenSyntax),
	])
	#DefineStructWalker(ArrowExprSyntax, [
		("effectSpecifiers", TypeEffectSpecifiersSyntax?),
		("arrow", TokenSyntax),
	])
	#DefineStructWalker(AsExprSyntax, [
		("expression", ExprSyntax),
		("asKeyword", TokenSyntax),
		("questionOrExclamationMark", TokenSyntax?),
		("type", TypeSyntax),
	])
	#DefineStructWalker(AssignmentExprSyntax, [
		("equal", TokenSyntax),
	])
	#DefineStructWalker(AwaitExprSyntax, [
		("awaitKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(BinaryOperatorExprSyntax, [
		("operator", TokenSyntax),
	])
	#DefineStructWalker(BooleanLiteralExprSyntax, [
		("literal", TokenSyntax),
	])
	#DefineStructWalker(BorrowExprSyntax, [
		("borrowKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(d_CanImportExprSyntax, [
		("canImportKeyword", TokenSyntax),
		("leftParen", TokenSyntax),
		("importPath", TokenSyntax),
		("versionInfo", d_CanImportVersionInfoSyntax?),
		("rightParen", TokenSyntax),
	])
	#DefineStructWalker(d_CanImportVersionInfoSyntax, [
		("comma", TokenSyntax),
		("label", TokenSyntax),
		("colon", TokenSyntax),
		("version", VersionTupleSyntax),
	])
	#DefineStructWalker(ClosureExprSyntax, [
		("leftBrace", TokenSyntax),
		("signature", ClosureSignatureSyntax?),
		("statements", CodeBlockItemListSyntax),
		("rightBrace", TokenSyntax),
	])
	#DefineStructWalker(ConsumeExprSyntax, [
		("consumeKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(CopyExprSyntax, [
		("copyKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(DeclReferenceExprSyntax, [
		("baseName", TokenSyntax),
		("argumentNames", DeclNameArgumentsSyntax?),
	])
	#DefineStructWalker(DictionaryExprSyntax, [
		("leftSquare", TokenSyntax),
		("content", DictionaryExprSyntax.Content),
		("rightSquare", TokenSyntax),
	])
	#DefineStructWalker(DiscardAssignmentExprSyntax, [
		("wildcard", TokenSyntax),
	])
	@_spi(ExperimentalLanguageFeatures)
	#DefineStructWalker(DoExprSyntax, [
		("doKeyword", TokenSyntax),
		("body", CodeBlockSyntax),
		("catchClauses", CatchClauseListSyntax),
	])
	#DefineStructWalker(EditorPlaceholderExprSyntax, [
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(FloatLiteralExprSyntax, [
		("literal", TokenSyntax),
	])
	#DefineStructWalker(ForceUnwrapExprSyntax, [
		("expression", ExprSyntax),
		("exclamationMark", TokenSyntax),
	])
	#DefineStructWalker(FunctionCallExprSyntax, [
		("calledExpression", ExprSyntax),
		("leftParen", TokenSyntax?),
		("arguments", LabeledExprListSyntax),
		("rightParen", TokenSyntax?),
		("trailingClosure", ClosureExprSyntax?),
		("additionalTrailingClosures", MultipleTrailingClosureElementListSyntax),
	])
	#DefineStructWalker(GenericSpecializationExprSyntax, [
		("expression", ExprSyntax),
		("genericArgumentClause", GenericArgumentClauseSyntax),
	])
	#DefineStructWalker(IfExprSyntax, [
		("ifKeyword", TokenSyntax),
		("conditions", ConditionElementListSyntax),
		("body", CodeBlockSyntax),
		("elseKeyword", TokenSyntax?),
		("elseBody", IfExprSyntax.ElseBody?),
	])
	#DefineStructWalker(InOutExprSyntax, [
		("ampersand", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(InfixOperatorExprSyntax, [
		("leftOperand", ExprSyntax),
		("operator", ExprSyntax),
		("rightOperand", ExprSyntax),
	])
	#DefineStructWalker(IntegerLiteralExprSyntax, [
		("literal", TokenSyntax),
	])
	#DefineStructWalker(IsExprSyntax, [
		("expression", ExprSyntax),
		("isKeyword", TokenSyntax),
		("type", TypeSyntax),
	])
	#DefineStructWalker(KeyPathExprSyntax, [
		("backslash", TokenSyntax),
		("root", TypeSyntax?),
		("components", KeyPathComponentListSyntax),
	])
	#DefineStructWalker(MacroExpansionExprSyntax, [
		("pound", TokenSyntax),
		("macroName", TokenSyntax),
		("genericArgumentClause", GenericArgumentClauseSyntax?),
		("leftParen", TokenSyntax?),
		("arguments", LabeledExprListSyntax),
		("rightParen", TokenSyntax?),
		("trailingClosure", ClosureExprSyntax?),
		("additionalTrailingClosures", MultipleTrailingClosureElementListSyntax),
	])
	#DefineStructWalker(MemberAccessExprSyntax, [
		("base", ExprSyntax?),
		("period", TokenSyntax),
		("declName", DeclReferenceExprSyntax),
	])
	#DefineStructWalker(MissingExprSyntax, [
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(NilLiteralExprSyntax, [
		("nilKeyword", TokenSyntax),
	])
	#DefineStructWalker(OptionalChainingExprSyntax, [
		("expression", ExprSyntax),
		("questionMark", TokenSyntax),
	])
	#DefineStructWalker(PackElementExprSyntax, [
		("eachKeyword", TokenSyntax),
		("pack", ExprSyntax),
	])
	#DefineStructWalker(PackExpansionExprSyntax, [
		("repeatKeyword", TokenSyntax),
		("repetitionPattern", ExprSyntax),
	])
	#DefineStructWalker(PatternExprSyntax, [
		("pattern", PatternSyntax),
	])
	#DefineStructWalker(PostfixIfConfigExprSyntax, [
		("base", ExprSyntax?),
		("config", IfConfigDeclSyntax),
	])
	#DefineStructWalker(PostfixOperatorExprSyntax, [
		("expression", ExprSyntax),
		("operator", TokenSyntax),
	])
	#DefineStructWalker(PrefixOperatorExprSyntax, [
		("operator", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(RegexLiteralExprSyntax, [
		("openingPounds", TokenSyntax?),
		("openingSlash", TokenSyntax),
		("regex", TokenSyntax),
		("closingSlash", TokenSyntax),
		("closingPounds", TokenSyntax?),
	])
	#DefineStructWalker(SequenceExprSyntax, [
		("elements", ExprListSyntax),
	])
	#DefineStructWalker(SimpleStringLiteralExprSyntax, [
		("openingQuote", TokenSyntax),
		("segments", SimpleStringLiteralSegmentListSyntax),
		("closingQuote", TokenSyntax),
	])
	#DefineStructWalker(StringLiteralExprSyntax, [
		("openingPounds", TokenSyntax?),
		("openingQuote", TokenSyntax),
		("segments", StringLiteralSegmentListSyntax),
		("closingQuote", TokenSyntax),
		("closingPounds", TokenSyntax?),
	])
	#DefineStructWalker(SubscriptCallExprSyntax, [
		("calledExpression", ExprSyntax),
		("leftSquare", TokenSyntax),
		("arguments", LabeledExprListSyntax),
		("rightSquare", TokenSyntax),
		("trailingClosure", ClosureExprSyntax?),
		("additionalTrailingClosures", MultipleTrailingClosureElementListSyntax),
	])
	#DefineStructWalker(SuperExprSyntax, [
		("superKeyword", TokenSyntax),
	])
	#DefineStructWalker(SwitchExprSyntax, [
		("switchKeyword", TokenSyntax),
		("subject", ExprSyntax),
		("leftBrace", TokenSyntax),
		("cases", SwitchCaseListSyntax),
		("rightBrace", TokenSyntax),
	])
	#DefineStructWalker(TernaryExprSyntax, [
		("condition", ExprSyntax),
		("questionMark", TokenSyntax),
		("thenExpression", ExprSyntax),
		("colon", TokenSyntax),
		("elseExpression", ExprSyntax),
	])
	#DefineStructWalker(TryExprSyntax, [
		("tryKeyword", TokenSyntax),
		("questionOrExclamationMark", TokenSyntax?),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(TupleExprSyntax, [
		("leftParen", TokenSyntax),
		("elements", LabeledExprListSyntax),
		("rightParen", TokenSyntax),
	])
	#DefineStructWalker(TypeExprSyntax, [
		("type", TypeSyntax),
	])
	#DefineStructWalker(UnresolvedAsExprSyntax, [
		("asKeyword", TokenSyntax),
		("questionOrExclamationMark", TokenSyntax?),
	])
	#DefineStructWalker(UnresolvedIsExprSyntax, [
		("isKeyword", TokenSyntax),
	])
	#DefineStructWalker(UnresolvedTernaryExprSyntax, [
		("questionMark", TokenSyntax),
		("thenExpression", ExprSyntax),
		("colon", TokenSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(ExprListSyntax, ExprSyntax)
}

extension SyntaxEditor {
	#DefineEnumWalker(IfExprSyntax.ElseBody, [
		("ifExpr", IfExprSyntax),
		("codeBlock", CodeBlockSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(LabeledExprListSyntax, LabeledExprSyntax)
	#DefineStructWalker(LabeledExprSyntax, [
		("label", TokenSyntax?),
		("colon", TokenSyntax?),
		("expression", ExprSyntax),
		("trailingComma", TokenSyntax?),
	])
}
