import SwiftSyntax
import Visitor

extension SyntaxEditor {
	public static func WalkToken(_ ctx: Context, _ syn: TokenSyntax) throws -> TokenSyntax {
		return syn
	}
}
