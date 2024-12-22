import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineStructWalker(CodeBlockSyntax, [
		("leftBrace", TokenSyntax),
		("statements", CodeBlockItemListSyntax),
		("rightBrace", TokenSyntax),
	])

	#DefineListWalker(CodeBlockItemListSyntax, CodeBlockItemSyntax)
	#DefineStructWalker(CodeBlockItemSyntax, [
		("item", CodeBlockItemSyntax.Item),
		("semicolon", TokenSyntax?),
	])

	#DefineEnumWalker(CodeBlockItemSyntax.Item, [
		("decl", DeclSyntax),
		("stmt", StmtSyntax),
		("expr", ExprSyntax),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(MemberBlockSyntax, [
		("leftBrace", TokenSyntax),
		("members", MemberBlockItemListSyntax),
		("rightBrace", TokenSyntax),
	])

	#DefineListWalker(MemberBlockItemListSyntax, MemberBlockItemSyntax)
	#DefineStructWalker(MemberBlockItemSyntax, [
		("decl", DeclSyntax),
		("semicolon", TokenSyntax?),
	])
}
