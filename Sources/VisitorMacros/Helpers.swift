import SwiftSyntax


enum ArgumentType {
	case type(DeclReferenceExprSyntax)
	case member(MemberAccessExprSyntax)
	case optional(OptionalChainingExprSyntax)

	var typeName: String {
		switch self {
			case .type(let expr):
				return expr.trimmedDescription
			case .member(let expr):
				return expr.trimmedDescription
			case .optional(let expr):
				return expr.trimmedDescription
		}
	}
}


fileprivate func SanitizeFunctionNameType(_ type: ArgumentType) -> String {
	return type.typeName
		.replacingOccurrences(of: "Syntax", with: "")
		.replacingOccurrences(of: ".", with: "")
		.replacingOccurrences(of: "?", with: "")
}

func VisitFunctionNameFromType(_ type: ArgumentType) -> String {
	return "Visit" + SanitizeFunctionNameType(type)
}

func WalkFunctionNameFromType(_ type: ArgumentType) -> String {
	return "Walk" + SanitizeFunctionNameType(type)
}


func GetArgumentString<T: IteratorProtocol>(_ args: inout T) -> Optional<String>
where T.Element == LabeledExprSyntax {
	args.next()?.expression.as(StringLiteralExprSyntax.self)?.segments.description
}

func GetArgumentType<T: IteratorProtocol>(_ args: inout T) -> Optional<ArgumentType>
where T.Element == LabeledExprSyntax {
	guard let expression = args.next()?.expression else { return nil }

	switch expression.as(ExprSyntaxEnum.self) {
		case .declReferenceExpr(let expr):
			return .type(expr)
		case .memberAccessExpr(let expr):
			return .member(expr)
		case .optionalChainingExpr(let expr):
			return .optional(expr)
		default:
			return nil
	}
}

func GetArgumentStringTypeTupleArray<T: IteratorProtocol>(_ args: inout T) -> Optional<[(String, ArgumentType)]>
where T.Element == LabeledExprSyntax {
	args.next()?.expression.as(ArrayExprSyntax.self)?.elements.compactMap {
		guard let tuple = $0.expression.as(TupleExprSyntax.self) else { return nil }
		var components = tuple.elements.makeIterator()

		guard let string = GetArgumentString(&components) else { return nil }
		guard let type = GetArgumentType(&components) else { return nil }
		return (string, type)
	}
}
