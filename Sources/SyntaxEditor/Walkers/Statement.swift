@_spi(ExperimentalLanguageFeatures)
import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineSubtypeWalker(StmtSyntax, StmtSyntaxEnum, [
		("breakStmt", BreakStmtSyntax),
		("continueStmt", ContinueStmtSyntax),
		("deferStmt", DeferStmtSyntax),
		("discardStmt", DiscardStmtSyntax),
		("doStmt", DoStmtSyntax),
		("expressionStmt", ExpressionStmtSyntax),
		("fallThroughStmt", FallThroughStmtSyntax),
		("forStmt", ForStmtSyntax),
		("guardStmt", GuardStmtSyntax),
		("labeledStmt", LabeledStmtSyntax),
		("missingStmt", MissingStmtSyntax),
		("repeatStmt", RepeatStmtSyntax),
		("returnStmt", ReturnStmtSyntax),
		("thenStmt", ThenStmtSyntax),
		("throwStmt", ThrowStmtSyntax),
		("whileStmt", WhileStmtSyntax),
		("yieldStmt", YieldStmtSyntax),
	])

	#DefineStructWalker(BreakStmtSyntax, [
		("breakKeyword", TokenSyntax),
		("label", TokenSyntax?),
	])
	#DefineStructWalker(ContinueStmtSyntax, [
		("continueKeyword", TokenSyntax),
		("label", TokenSyntax?),
	])
	#DefineStructWalker(DeferStmtSyntax, [
		("deferKeyword", TokenSyntax),
		("body", CodeBlockSyntax),
	])
	#DefineStructWalker(DiscardStmtSyntax, [
		("discardKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(DoStmtSyntax, [
		("doKeyword", TokenSyntax),
		("throwsClause", ThrowsClauseSyntax?),
		("body", CodeBlockSyntax),
		("catchClauses", CatchClauseListSyntax),
	])
	#DefineStructWalker(ExpressionStmtSyntax, [
		("expression", ExprSyntax),
	])
	#DefineStructWalker(FallThroughStmtSyntax, [
		("fallthroughKeyword", TokenSyntax),
	])
	#DefineStructWalker(ForStmtSyntax, [
		("forKeyword", TokenSyntax),
		("tryKeyword", TokenSyntax?),
		("awaitKeyword", TokenSyntax?),
		("caseKeyword", TokenSyntax?),
		("pattern", PatternSyntax),
		("typeAnnotation", TypeAnnotationSyntax?),
		("inKeyword", TokenSyntax),
		("sequence", ExprSyntax),
		("whereClause", WhereClauseSyntax?),
		("body", CodeBlockSyntax),
	])
	#DefineStructWalker(GuardStmtSyntax, [
		("guardKeyword", TokenSyntax),
		("conditions", ConditionElementListSyntax),
		("elseKeyword", TokenSyntax),
		("body", CodeBlockSyntax),
	])
	#DefineStructWalker(LabeledStmtSyntax, [
		("label", TokenSyntax),
		("colon", TokenSyntax),
		("statement", StmtSyntax),
	])
	#DefineStructWalker(MissingStmtSyntax, [
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(RepeatStmtSyntax, [
		("repeatKeyword", TokenSyntax),
		("body", CodeBlockSyntax),
		("whileKeyword", TokenSyntax),
		("condition", ExprSyntax),
	])
	#DefineStructWalker(ReturnStmtSyntax, [
		("returnKeyword", TokenSyntax),
		("expression", ExprSyntax?),
	])
	@_spi(ExperimentalLanguageFeatures)
	#DefineStructWalker(ThenStmtSyntax, [
		("thenKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(ThrowStmtSyntax, [
		("throwKeyword", TokenSyntax),
		("expression", ExprSyntax),
	])
	#DefineStructWalker(WhileStmtSyntax, [
		("whileKeyword", TokenSyntax),
		("conditions", ConditionElementListSyntax),
		("body", CodeBlockSyntax),
	])
	#DefineStructWalker(YieldStmtSyntax, [
		("yieldKeyword", TokenSyntax),
		("yieldedExpressions", YieldStmtSyntax.YieldedExpressions),
	])
}

extension SyntaxEditor {
	#DefineEnumWalker(YieldStmtSyntax.YieldedExpressions, [
		("multiple", YieldedExpressionsClauseSyntax),
		("single", ExprSyntax),
	])
}
