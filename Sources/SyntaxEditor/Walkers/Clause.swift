import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(InitializerClauseSyntax, [
		("equal", TokenSyntax),
		("value", ExprSyntax),
	])

	#DefineStructWalker(TypeInitializerClauseSyntax, [
		("equal", TokenSyntax),
		("value", TypeSyntax),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(InheritanceClauseSyntax, [
		("colon", TokenSyntax),
		("inheritedTypes", InheritedTypeListSyntax),
	])

	#DefineListWalker(InheritedTypeListSyntax, InheritedTypeSyntax)
	#DefineStructWalker(InheritedTypeSyntax, [
		("type", TypeSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(GenericArgumentClauseSyntax, [
		("leftAngle", TokenSyntax),
		("arguments", GenericArgumentListSyntax),
		("rightAngle", TokenSyntax),
	])

	#DefineListWalker(GenericArgumentListSyntax, GenericArgumentSyntax)
	#DefineStructWalker(GenericArgumentSyntax, [
		("argument", TypeSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(ThrowsClauseSyntax, [
		("throwsSpecifier", TokenSyntax),
		("leftParen", TokenSyntax?),
		("type", TypeSyntax?),
		("rightParen", TokenSyntax?),
	])

	#DefineListWalker(CatchClauseListSyntax, CatchClauseSyntax)
	#DefineStructWalker(CatchClauseSyntax, [
		("catchKeyword", TokenSyntax),
		("catchItems", CatchItemListSyntax),
		("body", CodeBlockSyntax),
	])

	#DefineListWalker(CatchItemListSyntax, CatchItemSyntax)
	#DefineStructWalker(CatchItemSyntax, [
		("pattern", PatternSyntax?),
		("whereClause", WhereClauseSyntax?),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(WhereClauseSyntax, [
		("whereKeyword", TokenSyntax),
		("condition", ExprSyntax),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(YieldedExpressionsClauseSyntax, [
		("leftParen", TokenSyntax),
		("elements", YieldedExpressionListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineListWalker(YieldedExpressionListSyntax, YieldedExpressionSyntax)
	#DefineStructWalker(YieldedExpressionSyntax, [
		("expression", ExprSyntax),
		("comma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(ReturnClauseSyntax, [
		("arrow", TokenSyntax),
		("type", TypeSyntax),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(GenericParameterClauseSyntax, [
		("leftAngle", TokenSyntax),
		("parameters", GenericParameterListSyntax),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("rightAngle", TokenSyntax),
	])

	#DefineListWalker(GenericParameterListSyntax, GenericParameterSyntax)
	#DefineStructWalker(GenericParameterSyntax, [
		("attributes", AttributeListSyntax),
		("eachKeyword", TokenSyntax?),
		("name", TokenSyntax),
		("colon", TokenSyntax?),
		("inheritedType", TypeSyntax?),
		("trailingComma", TokenSyntax?),
	])

	#DefineStructWalker(GenericWhereClauseSyntax, [
		("whereKeyword", TokenSyntax),
		("requirements", GenericRequirementListSyntax),
	])

	#DefineListWalker(GenericRequirementListSyntax, GenericRequirementSyntax)
	#DefineStructWalker(GenericRequirementSyntax, [
		("requirement", GenericRequirementSyntax.Requirement),
		("trailingComma", TokenSyntax?),
	])
	#DefineEnumWalker(GenericRequirementSyntax.Requirement, [
		("sameTypeRequirement", SameTypeRequirementSyntax),
		("conformanceRequirement", ConformanceRequirementSyntax),
		("layoutRequirement", LayoutRequirementSyntax),
	])

	#DefineStructWalker(SameTypeRequirementSyntax, [
		("leftType", TypeSyntax),
		("equal", TokenSyntax),
		("rightType", TypeSyntax),
	])

	#DefineStructWalker(ConformanceRequirementSyntax, [
		("leftType", TypeSyntax),
		("colon", TokenSyntax),
		("rightType", TypeSyntax),
	])

	#DefineStructWalker(LayoutRequirementSyntax, [
		("type", TypeSyntax),
		("colon", TokenSyntax),
		("layoutSpecifier", TokenSyntax),
		("leftParen", TokenSyntax?),
		("size", TokenSyntax?),
		("comma", TokenSyntax?),
		("alignment", TokenSyntax?),
		("rightParen", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(PrimaryAssociatedTypeClauseSyntax, [
		("leftAngle", TokenSyntax),
		("primaryAssociatedTypes", PrimaryAssociatedTypeListSyntax),
		("rightAngle", TokenSyntax),
	])

	#DefineListWalker(PrimaryAssociatedTypeListSyntax, PrimaryAssociatedTypeSyntax)
	#DefineStructWalker(PrimaryAssociatedTypeSyntax, [
		("name", TokenSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineListWalker(IfConfigClauseListSyntax, IfConfigClauseSyntax)
	#DefineStructWalker(IfConfigClauseSyntax, [
		("poundKeyword", TokenSyntax),
		("condition", ExprSyntax?),
		("elements", IfConfigClauseSyntax.Elements?),
	])
	#DefineEnumWalker(IfConfigClauseSyntax.Elements, [
		("statements", CodeBlockItemListSyntax),
		("switchCases", SwitchCaseListSyntax),
		("decls", MemberBlockItemListSyntax),
		("postfixExpression", ExprSyntax),
		("attributes", AttributeListSyntax),
	])
}
