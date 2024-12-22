import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(AccessorBlockSyntax, [
		("leftBrace", TokenSyntax),
		("accessors", AccessorBlockSyntax.Accessors),
		("rightBrace", TokenSyntax),
	])
	#DefineEnumWalker(AccessorBlockSyntax.Accessors, [
		("accessors", AccessorDeclListSyntax),
		("getter", CodeBlockItemListSyntax),
	])

	#DefineListWalker(AccessorDeclListSyntax, AccessorDeclSyntax)
}

extension SyntaxEditor {
	#DefineStructWalker(AccessorParametersSyntax, [
		("leftParen", TokenSyntax),
		("name", TokenSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineStructWalker(AccessorEffectSpecifiersSyntax, [
		("asyncSpecifier", TokenSyntax?),
		("throwsClause", ThrowsClauseSyntax?),
	])
}
