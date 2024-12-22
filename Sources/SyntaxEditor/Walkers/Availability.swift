import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(AvailabilityLabeledArgumentSyntax, [
		("label", TokenSyntax),
		("colon", TokenSyntax),
		("value", AvailabilityLabeledArgumentSyntax.Value),
	])

	#DefineEnumWalker(AvailabilityLabeledArgumentSyntax.Value, [
		("string", SimpleStringLiteralExprSyntax),
		("version", VersionTupleSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(AvailabilityArgumentListSyntax, AvailabilityArgumentSyntax)
	#DefineStructWalker(AvailabilityArgumentSyntax, [
		("argument", AvailabilityArgumentSyntax.Argument),
		("trailingComma", TokenSyntax?),
	])
	#DefineEnumWalker(AvailabilityArgumentSyntax.Argument, [
		("token", TokenSyntax),
		("availabilityVersionRestriction", PlatformVersionSyntax),
		("availabilityLabeledArgument", AvailabilityLabeledArgumentSyntax),
	])
}
