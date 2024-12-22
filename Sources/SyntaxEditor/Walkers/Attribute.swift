import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(AttributeListSyntax, AttributeListSyntax.Element)
	#DefineEnumWalker(AttributeListSyntax.Element, [
		("attribute", AttributeSyntax),
		("ifConfigDecl", IfConfigDeclSyntax),
	])

	#DefineStructWalker(AttributeSyntax, [
		("atSign", TokenSyntax),
		("attributeName", TypeSyntax),
		("leftParen", TokenSyntax?),
		("arguments", AttributeSyntax.Arguments?),
		("rightParen", TokenSyntax?),
	])

	#DefineEnumWalker(AttributeSyntax.Arguments, [
		("argumentList", LabeledExprListSyntax),
		("token", TokenSyntax),
		("string", StringLiteralExprSyntax),
		("availability", AvailabilityArgumentListSyntax),
		("specializeArguments", SpecializeAttributeArgumentListSyntax),
		("objCName", ObjCSelectorPieceListSyntax),
		("implementsArguments", ImplementsAttributeArgumentsSyntax),
		("differentiableArguments", DifferentiableAttributeArgumentsSyntax),
		("derivativeRegistrationArguments", DerivativeAttributeArgumentsSyntax),
		("backDeployedArguments", BackDeployedAttributeArgumentsSyntax),
		("conventionArguments", ConventionAttributeArgumentsSyntax),
		("conventionWitnessMethodArguments", ConventionWitnessMethodAttributeArgumentsSyntax),
		("opaqueReturnTypeOfAttributeArguments", OpaqueReturnTypeOfAttributeArgumentsSyntax),
		("exposeAttributeArguments", ExposeAttributeArgumentsSyntax),
		("originallyDefinedInArguments", OriginallyDefinedInAttributeArgumentsSyntax),
		("underscorePrivateAttributeArguments", UnderscorePrivateAttributeArgumentsSyntax),
		("dynamicReplacementArguments", DynamicReplacementAttributeArgumentsSyntax),
		("unavailableFromAsyncArguments", UnavailableFromAsyncAttributeArgumentsSyntax),
		("effectsArguments", EffectsAttributeArgumentListSyntax),
		("documentationArguments", DocumentationAttributeArgumentListSyntax),
	])

	#DefineStructWalker(ImplementsAttributeArgumentsSyntax, [
		("type", TypeSyntax),
		("comma", TokenSyntax),
		("declName", DeclReferenceExprSyntax),
	])
	#DefineStructWalker(BackDeployedAttributeArgumentsSyntax, [
		("beforeLabel", TokenSyntax),
		("colon", TokenSyntax),
		("platforms", PlatformVersionItemListSyntax),
	])
	#DefineStructWalker(ConventionAttributeArgumentsSyntax, [
		("conventionLabel", TokenSyntax),
		("comma", TokenSyntax?),
		("cTypeLabel", TokenSyntax?),
		("colon", TokenSyntax?),
		("cTypeString", StringLiteralExprSyntax?),
	])
	#DefineStructWalker(ConventionWitnessMethodAttributeArgumentsSyntax, [
		("witnessMethodLabel", TokenSyntax),
		("colon", TokenSyntax),
		("protocolName", TokenSyntax),
	])
	#DefineStructWalker(OpaqueReturnTypeOfAttributeArgumentsSyntax, [
		("mangledName", StringLiteralExprSyntax),
		("comma", TokenSyntax),
		("ordinal", TokenSyntax),
	])
	#DefineStructWalker(ExposeAttributeArgumentsSyntax, [
		("language", TokenSyntax),
		("comma", TokenSyntax?),
		("cxxName", StringLiteralExprSyntax?),
	])
	#DefineStructWalker(OriginallyDefinedInAttributeArgumentsSyntax, [
		("moduleLabel", TokenSyntax),
		("colon", TokenSyntax),
		("moduleName", StringLiteralExprSyntax),
		("comma", TokenSyntax),
		("platforms", PlatformVersionItemListSyntax),
	])
	#DefineStructWalker(UnderscorePrivateAttributeArgumentsSyntax, [
		("sourceFileLabel", TokenSyntax),
		("colon", TokenSyntax),
		("filename", StringLiteralExprSyntax),
	])
	#DefineStructWalker(DynamicReplacementAttributeArgumentsSyntax, [
		("forLabel", TokenSyntax),
		("colon", TokenSyntax),
		("declName", DeclReferenceExprSyntax),
	])
	#DefineStructWalker(UnavailableFromAsyncAttributeArgumentsSyntax, [
		("messageLabel", TokenSyntax),
		("colon", TokenSyntax),
		("message", StringLiteralExprSyntax),
	])
	#DefineListWalker(EffectsAttributeArgumentListSyntax, TokenSyntax)

	#DefineListWalker(DocumentationAttributeArgumentListSyntax, DocumentationAttributeArgumentSyntax)
	#DefineStructWalker(DocumentationAttributeArgumentSyntax, [
		("label", TokenSyntax),
		("colon", TokenSyntax),
		("value", DocumentationAttributeArgumentSyntax.Value),
		("trailingComma", TokenSyntax?),
	])
	#DefineEnumWalker(DocumentationAttributeArgumentSyntax.Value, [
		("token", TokenSyntax),
		("string", StringLiteralExprSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(SpecializeAttributeArgumentListSyntax, SpecializeAttributeArgumentListSyntax.Element)
	#DefineEnumWalker(SpecializeAttributeArgumentListSyntax.Element, [
		("labeledSpecializeArgument", LabeledSpecializeArgumentSyntax),
		("specializeAvailabilityArgument", SpecializeAvailabilityArgumentSyntax),
		("specializeTargetFunctionArgument", SpecializeTargetFunctionArgumentSyntax),
		("genericWhereClause", GenericWhereClauseSyntax),
	])

	#DefineStructWalker(LabeledSpecializeArgumentSyntax, [
		("label", TokenSyntax),
		("colon", TokenSyntax),
		("value", TokenSyntax),
		("trailingComma", TokenSyntax?),
	])
	#DefineStructWalker(SpecializeAvailabilityArgumentSyntax, [
		("availabilityLabel", TokenSyntax),
		("colon", TokenSyntax),
		("availabilityArguments", AvailabilityArgumentListSyntax),
		("semicolon", TokenSyntax),
	])
	#DefineStructWalker(SpecializeTargetFunctionArgumentSyntax, [
		("targetLabel", TokenSyntax),
		("colon", TokenSyntax),
		("declName", DeclReferenceExprSyntax),
		("trailingComma", TokenSyntax?),
	])
}
