import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(ConditionElementListSyntax, ConditionElementSyntax)
	#DefineStructWalker(ConditionElementSyntax, [
		("condition", ConditionElementSyntax.Condition),
		("trailingComma", TokenSyntax?),
	])
	#DefineEnumWalker(ConditionElementSyntax.Condition, [
		("expression", ExprSyntax),
		("availability", AvailabilityConditionSyntax),
		("matchingPattern", MatchingPatternConditionSyntax),
		("optionalBinding", OptionalBindingConditionSyntax),
	])

	#DefineStructWalker(AvailabilityConditionSyntax, [
		("availabilityKeyword", TokenSyntax),
		("leftParen", TokenSyntax),
		("availabilityArguments", AvailabilityArgumentListSyntax),
		("rightParen", TokenSyntax),
	])
	#DefineStructWalker(MatchingPatternConditionSyntax, [
		("caseKeyword", TokenSyntax),
		("pattern", PatternSyntax),
		("typeAnnotation", TypeAnnotationSyntax?),
		("initializer", InitializerClauseSyntax),
	])
	#DefineStructWalker(OptionalBindingConditionSyntax, [
		("bindingSpecifier", TokenSyntax),
		("pattern", PatternSyntax),
		("typeAnnotation", TypeAnnotationSyntax?),
		("initializer", InitializerClauseSyntax?),
	])
}
