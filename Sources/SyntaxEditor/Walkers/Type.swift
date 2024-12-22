@_spi(ExperimentalLanguageFeatures)
import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineSubtypeWalker(TypeSyntax, TypeSyntaxEnum, [
		("arrayType", ArrayTypeSyntax),
		("attributedType", AttributedTypeSyntax),
		("classRestrictionType", ClassRestrictionTypeSyntax),
		("compositionType", CompositionTypeSyntax),
		("dictionaryType", DictionaryTypeSyntax),
		("functionType", FunctionTypeSyntax),
		("identifierType", IdentifierTypeSyntax),
		("implicitlyUnwrappedOptionalType", ImplicitlyUnwrappedOptionalTypeSyntax),
		("memberType", MemberTypeSyntax),
		("metatypeType", MetatypeTypeSyntax),
		("missingType", MissingTypeSyntax),
		("namedOpaqueReturnType", NamedOpaqueReturnTypeSyntax),
		("optionalType", OptionalTypeSyntax),
		("packElementType", PackElementTypeSyntax),
		("packExpansionType", PackExpansionTypeSyntax),
		("someOrAnyType", SomeOrAnyTypeSyntax),
		("suppressedType", SuppressedTypeSyntax),
		("tupleType", TupleTypeSyntax),
	])

	#DefineStructWalker(ArrayTypeSyntax, [
		("leftSquare", TokenSyntax),
		("element", TypeSyntax),
		("rightSquare", TokenSyntax),
	])
	#DefineStructWalker(AttributedTypeSyntax, [
		("specifiers", TypeSpecifierListSyntax),
		("attributes", AttributeListSyntax),
		("baseType", TypeSyntax),
	])
	#DefineStructWalker(ClassRestrictionTypeSyntax, [
		("classKeyword", TokenSyntax),
	])
	#DefineStructWalker(CompositionTypeSyntax, [
		("elements", CompositionTypeElementListSyntax),
	])
	#DefineStructWalker(DictionaryTypeSyntax, [
		("leftSquare", TokenSyntax),
		("key", TypeSyntax),
		("colon", TokenSyntax),
		("value", TypeSyntax),
		("rightSquare", TokenSyntax),
	])
	#DefineStructWalker(FunctionTypeSyntax, [
		("leftParen", TokenSyntax),
		("parameters", TupleTypeElementListSyntax),
		("rightParen", TokenSyntax),
		("effectSpecifiers", TypeEffectSpecifiersSyntax?),
		("returnClause", ReturnClauseSyntax),
	])
	#DefineStructWalker(IdentifierTypeSyntax, [
		("name", TokenSyntax),
		("genericArgumentClause", GenericArgumentClauseSyntax?),
	])
	#DefineStructWalker(ImplicitlyUnwrappedOptionalTypeSyntax, [
		("wrappedType", TypeSyntax),
		("exclamationMark", TokenSyntax),
	])
	#DefineStructWalker(MemberTypeSyntax, [
		("baseType", TypeSyntax),
		("period", TokenSyntax),
		("name", TokenSyntax),
		("genericArgumentClause", GenericArgumentClauseSyntax?),
	])
	#DefineStructWalker(MetatypeTypeSyntax, [
		("baseType", TypeSyntax),
		("period", TokenSyntax),
		("metatypeSpecifier", TokenSyntax),
	])
	#DefineStructWalker(MissingTypeSyntax, [
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(NamedOpaqueReturnTypeSyntax, [
		("genericParameterClause", GenericParameterClauseSyntax),
		("type", TypeSyntax),
	])
	#DefineStructWalker(OptionalTypeSyntax, [
		("wrappedType", TypeSyntax),
		("questionMark", TokenSyntax),
	])
	#DefineStructWalker(PackElementTypeSyntax, [
		("eachKeyword", TokenSyntax),
		("pack", TypeSyntax),
	])
	#DefineStructWalker(PackExpansionTypeSyntax, [
		("repeatKeyword", TokenSyntax),
		("repetitionPattern", TypeSyntax),
	])
	#DefineStructWalker(SomeOrAnyTypeSyntax, [
		("someOrAnySpecifier", TokenSyntax),
		("constraint", TypeSyntax),
	])
	#DefineStructWalker(SuppressedTypeSyntax, [
		("withoutTilde", TokenSyntax),
		("type", TypeSyntax),
	])
	#DefineStructWalker(TupleTypeSyntax, [
		("leftParen", TokenSyntax),
		("elements", TupleTypeElementListSyntax),
		("rightParen", TokenSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(CompositionTypeElementListSyntax, CompositionTypeElementSyntax)
	#DefineStructWalker(CompositionTypeElementSyntax, [
		("type", TypeSyntax),
		("ampersand", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(TypeAnnotationSyntax, [
		("colon", TokenSyntax),
		("type", TypeSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(TupleTypeElementListSyntax, TupleTypeElementSyntax)
	#DefineStructWalker(TupleTypeElementSyntax, [
		("inoutKeyword", TokenSyntax?),
		("firstName", TokenSyntax?),
		("secondName", TokenSyntax?),
		("colon", TokenSyntax?),
		("type", TypeSyntax),
		("ellipsis", TokenSyntax?),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineListWalker(TypeSpecifierListSyntax, TypeSpecifierListSyntax.Element)
	#DefineEnumWalker(TypeSpecifierListSyntax.Element, [
		("simpleTypeSpecifier", SimpleTypeSpecifierSyntax),
		("lifetimeTypeSpecifier", LifetimeTypeSpecifierSyntax),
	])

	#DefineStructWalker(SimpleTypeSpecifierSyntax, [
		("specifier", TokenSyntax),
	])

	@_spi(ExperimentalLanguageFeatures)
	#DefineStructWalker(LifetimeTypeSpecifierSyntax, [
		("dependsOnKeyword", TokenSyntax),
		("leftParen", TokenSyntax),
		("scopedKeyword", TokenSyntax?),
		("arguments", LifetimeSpecifierArgumentListSyntax),
		("rightParen", TokenSyntax),
	])

	@_spi(ExperimentalLanguageFeatures)
	#DefineListWalker(LifetimeSpecifierArgumentListSyntax, LifetimeSpecifierArgumentSyntax)
	@_spi(ExperimentalLanguageFeatures)
	#DefineStructWalker(LifetimeSpecifierArgumentSyntax, [
		("parameter", TokenSyntax),
		("trailingComma", TokenSyntax?),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(TypeEffectSpecifiersSyntax, [
		("asyncSpecifier", TokenSyntax?),
		("throwsClause", ThrowsClauseSyntax?),
	])
}
