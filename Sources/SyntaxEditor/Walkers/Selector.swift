import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineListWalker(ObjCSelectorPieceListSyntax, ObjCSelectorPieceSyntax)
	#DefineStructWalker(ObjCSelectorPieceSyntax, [
		("name", TokenSyntax?),
		("colon", TokenSyntax?),
	])
}
