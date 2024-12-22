import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(PlatformVersionItemListSyntax, PlatformVersionItemSyntax)
	#DefineStructWalker(PlatformVersionItemSyntax, [
		("platformVersion", PlatformVersionSyntax),
		("trailingComma", TokenSyntax?),
	])

	#DefineStructWalker(PlatformVersionSyntax, [
		("platform", TokenSyntax),
		("version", VersionTupleSyntax?),
	])

	#DefineStructWalker(VersionTupleSyntax, [
		("major", TokenSyntax),
		("components", VersionComponentListSyntax),
	])

	#DefineListWalker(VersionComponentListSyntax, VersionComponentSyntax)
	#DefineStructWalker(VersionComponentSyntax, [
		("period", TokenSyntax),
		("number", TokenSyntax),
	])
}
