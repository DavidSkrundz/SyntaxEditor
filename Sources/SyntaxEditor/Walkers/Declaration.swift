import SwiftSyntax
import Visitor

extension SyntaxEditor {
	#DefineSubtypeWalker(DeclSyntax, DeclSyntaxEnum, [
		("accessorDecl", AccessorDeclSyntax),
		("actorDecl", ActorDeclSyntax),
		("associatedTypeDecl", AssociatedTypeDeclSyntax),
		("classDecl", ClassDeclSyntax),
		("deinitializerDecl", DeinitializerDeclSyntax),
		("editorPlaceholderDecl", EditorPlaceholderDeclSyntax),
		("enumCaseDecl", EnumCaseDeclSyntax),
		("enumDecl", EnumDeclSyntax),
		("extensionDecl", ExtensionDeclSyntax),
		("functionDecl", FunctionDeclSyntax),
		("ifConfigDecl", IfConfigDeclSyntax),
		("importDecl", ImportDeclSyntax),
		("initializerDecl", InitializerDeclSyntax),
		("macroDecl", MacroDeclSyntax),
		("macroExpansionDecl", MacroExpansionDeclSyntax),
		("missingDecl", MissingDeclSyntax),
		("operatorDecl", OperatorDeclSyntax),
		("poundSourceLocation", PoundSourceLocationSyntax),
		("precedenceGroupDecl", PrecedenceGroupDeclSyntax),
		("protocolDecl", ProtocolDeclSyntax),
		("structDecl", StructDeclSyntax),
		("subscriptDecl", SubscriptDeclSyntax),
		("typeAliasDecl", TypeAliasDeclSyntax),
		("variableDecl", VariableDeclSyntax),
	])

	#DefineStructWalker(AccessorDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifier", DeclModifierSyntax?),
		("accessorSpecifier", TokenSyntax),
		("parameters", AccessorParametersSyntax?),
		("effectSpecifiers", AccessorEffectSpecifiersSyntax?),
		("body", CodeBlockSyntax?),
	])
	#DefineStructWalker(ActorDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("actorKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("inheritanceClause", InheritanceClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("memberBlock", MemberBlockSyntax),
	])
	#DefineStructWalker(AssociatedTypeDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("associatedtypeKeyword", TokenSyntax),
		("name", TokenSyntax),
		("inheritanceClause", InheritanceClauseSyntax?),
		("initializer", TypeInitializerClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
	])
	#DefineStructWalker(ClassDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("classKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("inheritanceClause", InheritanceClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("memberBlock", MemberBlockSyntax),
	])
	#DefineStructWalker(DeinitializerDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("deinitKeyword", TokenSyntax),
		("effectSpecifiers", DeinitializerEffectSpecifiersSyntax?),
		("body", CodeBlockSyntax?),
	])
	#DefineStructWalker(EditorPlaceholderDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(EnumCaseDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("caseKeyword", TokenSyntax),
		("elements", EnumCaseElementListSyntax),
	])
	#DefineStructWalker(EnumDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("enumKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("inheritanceClause", InheritanceClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("memberBlock", MemberBlockSyntax),
	])
	#DefineStructWalker(ExtensionDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("extensionKeyword", TokenSyntax),
		("extendedType", TypeSyntax),
		("inheritanceClause", InheritanceClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("memberBlock", MemberBlockSyntax),
	])
	#DefineStructWalker(FunctionDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("funcKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("signature", FunctionSignatureSyntax),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("body", CodeBlockSyntax?),
	])
	#DefineStructWalker(IfConfigDeclSyntax, [
		("clauses", IfConfigClauseListSyntax),
		("poundEndif", TokenSyntax),
	])
	#DefineStructWalker(ImportDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("importKeyword", TokenSyntax),
		("importKindSpecifier", TokenSyntax?),
		("path", ImportPathComponentListSyntax),
	])
	#DefineStructWalker(InitializerDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("initKeyword", TokenSyntax),
		("optionalMark", TokenSyntax?),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("signature", FunctionSignatureSyntax),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("body", CodeBlockSyntax?),
	])
	#DefineStructWalker(MacroDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("macroKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("signature", FunctionSignatureSyntax),
		("definition", InitializerClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
	])
	#DefineStructWalker(MacroExpansionDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("pound", TokenSyntax),
		("macroName", TokenSyntax),
		("genericArgumentClause", GenericArgumentClauseSyntax?),
		("leftParen", TokenSyntax?),
		("arguments", LabeledExprListSyntax),
		("rightParen", TokenSyntax?),
		("trailingClosure", ClosureExprSyntax?),
		("additionalTrailingClosures", MultipleTrailingClosureElementListSyntax),
	])
	#DefineStructWalker(MissingDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("placeholder", TokenSyntax),
	])
	#DefineStructWalker(OperatorDeclSyntax, [
		("fixitySpecifier", TokenSyntax),
		("operatorKeyword", TokenSyntax),
		("name", TokenSyntax),
		("operatorPrecedenceAndTypes", OperatorPrecedenceAndTypesSyntax?),
	])
	#DefineStructWalker(PoundSourceLocationSyntax, [
		("poundSourceLocation", TokenSyntax),
		("leftParen", TokenSyntax),
		("arguments", PoundSourceLocationArgumentsSyntax?),
		("rightParen", TokenSyntax),
	])
	#DefineStructWalker(PrecedenceGroupDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("precedencegroupKeyword", TokenSyntax),
		("name", TokenSyntax),
		("leftBrace", TokenSyntax),
		("groupAttributes", PrecedenceGroupAttributeListSyntax),
		("rightBrace", TokenSyntax),
	])
	#DefineStructWalker(ProtocolDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("protocolKeyword", TokenSyntax),
		("name", TokenSyntax),
		("primaryAssociatedTypeClause", PrimaryAssociatedTypeClauseSyntax?),
		("inheritanceClause", InheritanceClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("memberBlock", MemberBlockSyntax),
	])
	#DefineStructWalker(StructDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("structKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("inheritanceClause", InheritanceClauseSyntax?),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("memberBlock", MemberBlockSyntax),
	])
	#DefineStructWalker(SubscriptDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("subscriptKeyword", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("parameterClause", FunctionParameterClauseSyntax),
		("returnClause", ReturnClauseSyntax),
		("genericWhereClause", GenericWhereClauseSyntax?),
		("accessorBlock", AccessorBlockSyntax?),
	])
	#DefineStructWalker(TypeAliasDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("typealiasKeyword", TokenSyntax),
		("name", TokenSyntax),
		("genericParameterClause", GenericParameterClauseSyntax?),
		("initializer", TypeInitializerClauseSyntax),
		("genericWhereClause", GenericWhereClauseSyntax?),
	])
	#DefineStructWalker(VariableDeclSyntax, [
		("attributes", AttributeListSyntax),
		("modifiers", DeclModifierListSyntax),
		("bindingSpecifier", TokenSyntax),
		("bindings", PatternBindingListSyntax),
	])
}

extension SyntaxEditor {
	#DefineListWalker(DeclModifierListSyntax, DeclModifierSyntax)
	#DefineStructWalker(DeclModifierSyntax, [
		("name", TokenSyntax),
		("detail", DeclModifierDetailSyntax?),
	])

	#DefineStructWalker(DeclModifierDetailSyntax, [
		("leftParen", TokenSyntax),
		("detail", TokenSyntax),
		("rightParen", TokenSyntax),
	])
}

extension SyntaxEditor {
	#DefineStructWalker(DeclNameArgumentsSyntax, [
		("leftParen", TokenSyntax),
		("arguments", DeclNameArgumentListSyntax),
		("rightParen", TokenSyntax),
	])

	#DefineListWalker(DeclNameArgumentListSyntax, DeclNameArgumentSyntax)
	#DefineStructWalker(DeclNameArgumentSyntax, [
		("name", TokenSyntax),
		("colon", TokenSyntax),
	])
}
