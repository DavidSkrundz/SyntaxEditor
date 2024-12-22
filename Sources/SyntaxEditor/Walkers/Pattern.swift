import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineSubtypeWalker(PatternSyntax, PatternSyntaxEnum, [
		("expressionPattern", ExpressionPatternSyntax),
		("identifierPattern", IdentifierPatternSyntax),
		("isTypePattern", IsTypePatternSyntax),
		("missingPattern", MissingPatternSyntax),
		("tuplePattern", TuplePatternSyntax),
		("valueBindingPattern", ValueBindingPatternSyntax),
		("wildcardPattern", WildcardPatternSyntax),
	])

	#DefineStructWalker(ExpressionPatternSyntax, [
		("expression", ExprSyntax),
	])
	#DefineStructWalker(IdentifierPatternSyntax, [
		("identifier", TokenSyntax),
	])
	#DefineStructWalker(IsTypePatternSyntax, [
		("isKeyword", TokenSyntax),
		("type", TypeSyntax),
	])
	#DefineStructWalker(MissingPatternSyntax, [
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(TuplePatternSyntax, [
		("leftParen", TokenSyntax),
		("elements", TuplePatternElementListSyntax),
		("rightParen", TokenSyntax),
	])
	#DefineStructWalker(ValueBindingPatternSyntax, [
		("bindingSpecifier", TokenSyntax),
		("pattern", PatternSyntax),
	])
	#DefineStructWalker(WildcardPatternSyntax, [
		("wildcard", TokenSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(PatternBindingListSyntax, PatternBindingSyntax)
	#DefineStructWalker(PatternBindingSyntax, [
		("pattern", PatternSyntax),
		("typeAnnotation", TypeAnnotationSyntax?),
		("initializer", InitializerClauseSyntax?),
		("accessorBlock", AccessorBlockSyntax?),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineListWalker(TuplePatternElementListSyntax, TuplePatternElementSyntax)
	#DefineStructWalker(TuplePatternElementSyntax, [
		("label", TokenSyntax?),
		("colon", TokenSyntax?),
		("pattern", PatternSyntax),
		("trailingComma", TokenSyntax?),
	])
}
