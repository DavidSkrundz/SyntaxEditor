@_spi(ExperimentalLanguageFeatures)
import SwiftSyntax

import Forwarding
import Visitor

public typealias d_CanImportExprSyntax = _CanImportExprSyntax
public typealias d_CanImportVersionInfoSyntax = _CanImportVersionInfoSyntax

@Forward("Visit", "Walk")
public protocol SyntaxEditor {
	associatedtype Context


	// MARK: - Token
	static func VisitToken(_ ctx: Context, _ syn: TokenSyntax) throws -> TokenSyntax


	// MARK: - Block
	static func VisitCodeBlock(_ ctx: Context, _ syn: CodeBlockSyntax) throws -> CodeBlockSyntax
	static func VisitCodeBlockItemList(_ ctx: Context, _ syn: CodeBlockItemListSyntax) throws -> CodeBlockItemListSyntax
	static func VisitCodeBlockItem(_ ctx: Context, _ syn: CodeBlockItemSyntax) throws -> CodeBlockItemSyntax
	static func VisitCodeBlockItemItem(_ ctx: Context, _ syn: CodeBlockItemSyntax.Item) throws -> CodeBlockItemSyntax.Item
	static func VisitMemberBlock(_ ctx: Context, _ syn: MemberBlockSyntax) throws -> MemberBlockSyntax
	static func VisitMemberBlockItemList(_ ctx: Context, _ syn: MemberBlockItemListSyntax) throws -> MemberBlockItemListSyntax
	static func VisitMemberBlockItem(_ ctx: Context, _ syn: MemberBlockItemSyntax) throws -> MemberBlockItemSyntax


	//	 MARK: - Declaration
	static func VisitDecl(_ ctx: Context, _ syn: DeclSyntax) throws -> DeclSyntax
	static func VisitAccessorDecl(_ ctx: Context, _ syn: AccessorDeclSyntax) throws -> AccessorDeclSyntax
	static func VisitActorDecl(_ ctx: Context, _ syn: ActorDeclSyntax) throws -> ActorDeclSyntax
	static func VisitAssociatedTypeDecl(_ ctx: Context, _ syn: AssociatedTypeDeclSyntax) throws -> AssociatedTypeDeclSyntax
	static func VisitClassDecl(_ ctx: Context, _ syn: ClassDeclSyntax) throws -> ClassDeclSyntax
	static func VisitDeinitializerDecl(_ ctx: Context, _ syn: DeinitializerDeclSyntax) throws -> DeinitializerDeclSyntax
	static func VisitEditorPlaceholderDecl(_ ctx: Context, _ syn: EditorPlaceholderDeclSyntax) throws -> EditorPlaceholderDeclSyntax
	static func VisitEnumCaseDecl(_ ctx: Context, _ syn: EnumCaseDeclSyntax) throws -> EnumCaseDeclSyntax
	static func VisitEnumDecl(_ ctx: Context, _ syn: EnumDeclSyntax) throws -> EnumDeclSyntax
	static func VisitExtensionDecl(_ ctx: Context, _ syn: ExtensionDeclSyntax) throws -> ExtensionDeclSyntax
	static func VisitFunctionDecl(_ ctx: Context, _ syn: FunctionDeclSyntax) throws -> FunctionDeclSyntax
	static func VisitIfConfigDecl(_ ctx: Context, _ syn: IfConfigDeclSyntax) throws -> IfConfigDeclSyntax
	static func VisitImportDecl(_ ctx: Context, _ syn: ImportDeclSyntax) throws -> ImportDeclSyntax
	static func VisitInitializerDecl(_ ctx: Context, _ syn: InitializerDeclSyntax) throws -> InitializerDeclSyntax
	static func VisitMacroDecl(_ ctx: Context, _ syn: MacroDeclSyntax) throws -> MacroDeclSyntax
	static func VisitMacroExpansionDecl(_ ctx: Context, _ syn: MacroExpansionDeclSyntax) throws -> MacroExpansionDeclSyntax
	static func VisitMissingDecl(_ ctx: Context, _ syn: MissingDeclSyntax) throws -> MissingDeclSyntax
	static func VisitOperatorDecl(_ ctx: Context, _ syn: OperatorDeclSyntax) throws -> OperatorDeclSyntax
	static func VisitPoundSourceLocation(_ ctx: Context, _ syn: PoundSourceLocationSyntax) throws -> PoundSourceLocationSyntax
	static func VisitPrecedenceGroupDecl(_ ctx: Context, _ syn: PrecedenceGroupDeclSyntax) throws -> PrecedenceGroupDeclSyntax
	static func VisitProtocolDecl(_ ctx: Context, _ syn: ProtocolDeclSyntax) throws -> ProtocolDeclSyntax
	static func VisitStructDecl(_ ctx: Context, _ syn: StructDeclSyntax) throws -> StructDeclSyntax
	static func VisitSubscriptDecl(_ ctx: Context, _ syn: SubscriptDeclSyntax) throws -> SubscriptDeclSyntax
	static func VisitTypeAliasDecl(_ ctx: Context, _ syn: TypeAliasDeclSyntax) throws -> TypeAliasDeclSyntax
	static func VisitVariableDecl(_ ctx: Context, _ syn: VariableDeclSyntax) throws -> VariableDeclSyntax

	static func VisitDeclModifierList(_ ctx: Context, _ syn: DeclModifierListSyntax) throws -> DeclModifierListSyntax
	static func VisitDeclModifier(_ ctx: Context, _ syn: DeclModifierSyntax) throws -> DeclModifierSyntax
	static func VisitDeclModifierDetail(_ ctx: Context, _ syn: DeclModifierDetailSyntax) throws -> DeclModifierDetailSyntax

	static func VisitDeclNameArguments(_ ctx: Context, _ syn: DeclNameArgumentsSyntax) throws -> DeclNameArgumentsSyntax
	static func VisitDeclNameArgumentList(_ ctx: Context, _ syn: DeclNameArgumentListSyntax) throws -> DeclNameArgumentListSyntax
	static func VisitDeclNameArgument(_ ctx: Context, _ syn: DeclNameArgumentSyntax) throws -> DeclNameArgumentSyntax


	// MARK: - Statements
	static func VisitStmt(_ ctx: Context, _ syn: StmtSyntax) throws -> StmtSyntax
	static func VisitBreakStmt(_ ctx: Context, _ syn: BreakStmtSyntax) throws -> BreakStmtSyntax
	static func VisitContinueStmt(_ ctx: Context, _ syn: ContinueStmtSyntax) throws -> ContinueStmtSyntax
	static func VisitDeferStmt(_ ctx: Context, _ syn: DeferStmtSyntax) throws -> DeferStmtSyntax
	static func VisitDiscardStmt(_ ctx: Context, _ syn: DiscardStmtSyntax) throws -> DiscardStmtSyntax
	static func VisitDoStmt(_ ctx: Context, _ syn: DoStmtSyntax) throws -> DoStmtSyntax
	static func VisitExpressionStmt(_ ctx: Context, _ syn: ExpressionStmtSyntax) throws -> ExpressionStmtSyntax
	static func VisitFallThroughStmt(_ ctx: Context, _ syn: FallThroughStmtSyntax) throws -> FallThroughStmtSyntax
	static func VisitForStmt(_ ctx: Context, _ syn: ForStmtSyntax) throws -> ForStmtSyntax
	static func VisitGuardStmt(_ ctx: Context, _ syn: GuardStmtSyntax) throws -> GuardStmtSyntax
	static func VisitLabeledStmt(_ ctx: Context, _ syn: LabeledStmtSyntax) throws -> LabeledStmtSyntax
	static func VisitMissingStmt(_ ctx: Context, _ syn: MissingStmtSyntax) throws -> MissingStmtSyntax
	static func VisitRepeatStmt(_ ctx: Context, _ syn: RepeatStmtSyntax) throws -> RepeatStmtSyntax
	static func VisitReturnStmt(_ ctx: Context, _ syn: ReturnStmtSyntax) throws -> ReturnStmtSyntax
	@_spi(ExperimentalLanguageFeatures)
	static func VisitThenStmt(_ ctx: Context, _ syn: ThenStmtSyntax) throws -> ThenStmtSyntax
	static func VisitThrowStmt(_ ctx: Context, _ syn: ThrowStmtSyntax) throws -> ThrowStmtSyntax
	static func VisitWhileStmt(_ ctx: Context, _ syn: WhileStmtSyntax) throws -> WhileStmtSyntax
	static func VisitYieldStmt(_ ctx: Context, _ syn: YieldStmtSyntax) throws -> YieldStmtSyntax

	static func VisitYieldStmtYieldedExpressions(_ ctx: Context, _ syn: YieldStmtSyntax.YieldedExpressions) throws -> YieldStmtSyntax.YieldedExpressions


	// MARK: - Expressions
	static func VisitExpr(_ ctx: Context, _ syn: ExprSyntax) throws -> ExprSyntax
	static func VisitArrayExpr(_ ctx: Context, _ syn: ArrayExprSyntax) throws -> ArrayExprSyntax
	static func VisitArrowExpr(_ ctx: Context, _ syn: ArrowExprSyntax) throws -> ArrowExprSyntax
	static func VisitAsExpr(_ ctx: Context, _ syn: AsExprSyntax) throws -> AsExprSyntax
	static func VisitAssignmentExpr(_ ctx: Context, _ syn: AssignmentExprSyntax) throws -> AssignmentExprSyntax
	static func VisitAwaitExpr(_ ctx: Context, _ syn: AwaitExprSyntax) throws -> AwaitExprSyntax
	static func VisitBinaryOperatorExpr(_ ctx: Context, _ syn: BinaryOperatorExprSyntax) throws -> BinaryOperatorExprSyntax
	static func VisitBooleanLiteralExpr(_ ctx: Context, _ syn: BooleanLiteralExprSyntax) throws -> BooleanLiteralExprSyntax
	static func VisitBorrowExpr(_ ctx: Context, _ syn: BorrowExprSyntax) throws -> BorrowExprSyntax
	static func Visitd_CanImportExpr(_ ctx: Context, _ syn: d_CanImportExprSyntax) throws -> d_CanImportExprSyntax
	static func Visitd_CanImportVersionInfo(_ ctx: Context, _ syn: d_CanImportVersionInfoSyntax) throws -> d_CanImportVersionInfoSyntax
	static func VisitClosureExpr(_ ctx: Context, _ syn: ClosureExprSyntax) throws -> ClosureExprSyntax
	static func VisitConsumeExpr(_ ctx: Context, _ syn: ConsumeExprSyntax) throws -> ConsumeExprSyntax
	static func VisitCopyExpr(_ ctx: Context, _ syn: CopyExprSyntax) throws -> CopyExprSyntax
	static func VisitDeclReferenceExpr(_ ctx: Context, _ syn: DeclReferenceExprSyntax) throws -> DeclReferenceExprSyntax
	static func VisitDictionaryExpr(_ ctx: Context, _ syn: DictionaryExprSyntax) throws -> DictionaryExprSyntax
	static func VisitDiscardAssignmentExpr(_ ctx: Context, _ syn: DiscardAssignmentExprSyntax) throws -> DiscardAssignmentExprSyntax
	@_spi(ExperimentalLanguageFeatures)
	static func VisitDoExpr(_ ctx: Context, _ syn: DoExprSyntax) throws -> DoExprSyntax
	static func VisitEditorPlaceholderExpr(_ ctx: Context, _ syn: EditorPlaceholderExprSyntax) throws -> EditorPlaceholderExprSyntax
	static func VisitFloatLiteralExpr(_ ctx: Context, _ syn: FloatLiteralExprSyntax) throws -> FloatLiteralExprSyntax
	static func VisitForceUnwrapExpr(_ ctx: Context, _ syn: ForceUnwrapExprSyntax) throws -> ForceUnwrapExprSyntax
	static func VisitFunctionCallExpr(_ ctx: Context, _ syn: FunctionCallExprSyntax) throws -> FunctionCallExprSyntax
	static func VisitGenericSpecializationExpr(_ ctx: Context, _ syn: GenericSpecializationExprSyntax) throws -> GenericSpecializationExprSyntax
	static func VisitIfExpr(_ ctx: Context, _ syn: IfExprSyntax) throws -> IfExprSyntax
	static func VisitInOutExpr(_ ctx: Context, _ syn: InOutExprSyntax) throws -> InOutExprSyntax
	static func VisitInfixOperatorExpr(_ ctx: Context, _ syn: InfixOperatorExprSyntax) throws -> InfixOperatorExprSyntax
	static func VisitIntegerLiteralExpr(_ ctx: Context, _ syn: IntegerLiteralExprSyntax) throws -> IntegerLiteralExprSyntax
	static func VisitIsExpr(_ ctx: Context, _ syn: IsExprSyntax) throws -> IsExprSyntax
	static func VisitKeyPathExpr(_ ctx: Context, _ syn: KeyPathExprSyntax) throws -> KeyPathExprSyntax
	static func VisitMacroExpansionExpr(_ ctx: Context, _ syn: MacroExpansionExprSyntax) throws -> MacroExpansionExprSyntax
	static func VisitMemberAccessExpr(_ ctx: Context, _ syn: MemberAccessExprSyntax) throws -> MemberAccessExprSyntax
	static func VisitMissingExpr(_ ctx: Context, _ syn: MissingExprSyntax) throws -> MissingExprSyntax
	static func VisitNilLiteralExpr(_ ctx: Context, _ syn: NilLiteralExprSyntax) throws -> NilLiteralExprSyntax
	static func VisitOptionalChainingExpr(_ ctx: Context, _ syn: OptionalChainingExprSyntax) throws -> OptionalChainingExprSyntax
	static func VisitPackElementExpr(_ ctx: Context, _ syn: PackElementExprSyntax) throws -> PackElementExprSyntax
	static func VisitPackExpansionExpr(_ ctx: Context, _ syn: PackExpansionExprSyntax) throws -> PackExpansionExprSyntax
	static func VisitPatternExpr(_ ctx: Context, _ syn: PatternExprSyntax) throws -> PatternExprSyntax
	static func VisitPostfixIfConfigExpr(_ ctx: Context, _ syn: PostfixIfConfigExprSyntax) throws -> PostfixIfConfigExprSyntax
	static func VisitPostfixOperatorExpr(_ ctx: Context, _ syn: PostfixOperatorExprSyntax) throws -> PostfixOperatorExprSyntax
	static func VisitPrefixOperatorExpr(_ ctx: Context, _ syn: PrefixOperatorExprSyntax) throws -> PrefixOperatorExprSyntax
	static func VisitRegexLiteralExpr(_ ctx: Context, _ syn: RegexLiteralExprSyntax) throws -> RegexLiteralExprSyntax
	static func VisitSequenceExpr(_ ctx: Context, _ syn: SequenceExprSyntax) throws -> SequenceExprSyntax
	static func VisitSimpleStringLiteralExpr(_ ctx: Context, _ syn: SimpleStringLiteralExprSyntax) throws -> SimpleStringLiteralExprSyntax
	static func VisitStringLiteralExpr(_ ctx: Context, _ syn: StringLiteralExprSyntax) throws -> StringLiteralExprSyntax
	static func VisitSubscriptCallExpr(_ ctx: Context, _ syn: SubscriptCallExprSyntax) throws -> SubscriptCallExprSyntax
	static func VisitSuperExpr(_ ctx: Context, _ syn: SuperExprSyntax) throws -> SuperExprSyntax
	static func VisitSwitchExpr(_ ctx: Context, _ syn: SwitchExprSyntax) throws -> SwitchExprSyntax
	static func VisitTernaryExpr(_ ctx: Context, _ syn: TernaryExprSyntax) throws -> TernaryExprSyntax
	static func VisitTryExpr(_ ctx: Context, _ syn: TryExprSyntax) throws -> TryExprSyntax
	static func VisitTupleExpr(_ ctx: Context, _ syn: TupleExprSyntax) throws -> TupleExprSyntax
	static func VisitTypeExpr(_ ctx: Context, _ syn: TypeExprSyntax) throws -> TypeExprSyntax
	static func VisitUnresolvedAsExpr(_ ctx: Context, _ syn: UnresolvedAsExprSyntax) throws -> UnresolvedAsExprSyntax
	static func VisitUnresolvedIsExpr(_ ctx: Context, _ syn: UnresolvedIsExprSyntax) throws -> UnresolvedIsExprSyntax
	static func VisitUnresolvedTernaryExpr(_ ctx: Context, _ syn: UnresolvedTernaryExprSyntax) throws -> UnresolvedTernaryExprSyntax

	static func VisitExprList(_ ctx: Context, _ syn: ExprListSyntax) throws -> ExprListSyntax

	static func VisitIfExprElseBody(_ ctx: Context, _ syn: IfExprSyntax.ElseBody) throws -> IfExprSyntax.ElseBody

	static func VisitLabeledExprList(_ ctx: Context, _ syn: LabeledExprListSyntax) throws -> LabeledExprListSyntax
	static func VisitLabeledExpr(_ ctx: Context, _ syn: LabeledExprSyntax) throws -> LabeledExprSyntax


	// MARK: - Condition
	static func VisitConditionElementList(_ ctx: Context, _ syn: ConditionElementListSyntax) throws -> ConditionElementListSyntax
	static func VisitConditionElement(_ ctx: Context, _ syn: ConditionElementSyntax) throws -> ConditionElementSyntax
	static func VisitConditionElementCondition(_ ctx: Context, _ syn: ConditionElementSyntax.Condition) throws -> ConditionElementSyntax.Condition
	static func VisitAvailabilityCondition(_ ctx: Context, _ syn: AvailabilityConditionSyntax) throws -> AvailabilityConditionSyntax
	static func VisitMatchingPatternCondition(_ ctx: Context, _ syn: MatchingPatternConditionSyntax) throws -> MatchingPatternConditionSyntax
	static func VisitOptionalBindingCondition(_ ctx: Context, _ syn: OptionalBindingConditionSyntax) throws -> OptionalBindingConditionSyntax


	// MARK: - Pattern
	static func VisitPattern(_ ctx: Context, _ syn: PatternSyntax) throws -> PatternSyntax
	static func VisitExpressionPattern(_ ctx: Context, _ syn: ExpressionPatternSyntax) throws -> ExpressionPatternSyntax
	static func VisitIdentifierPattern(_ ctx: Context, _ syn: IdentifierPatternSyntax) throws -> IdentifierPatternSyntax
	static func VisitIsTypePattern(_ ctx: Context, _ syn: IsTypePatternSyntax) throws -> IsTypePatternSyntax
	static func VisitMissingPattern(_ ctx: Context, _ syn: MissingPatternSyntax) throws -> MissingPatternSyntax
	static func VisitTuplePattern(_ ctx: Context, _ syn: TuplePatternSyntax) throws -> TuplePatternSyntax
	static func VisitValueBindingPattern(_ ctx: Context, _ syn: ValueBindingPatternSyntax) throws -> ValueBindingPatternSyntax
	static func VisitWildcardPattern(_ ctx: Context, _ syn: WildcardPatternSyntax) throws -> WildcardPatternSyntax

	static func VisitPatternBindingList(_ ctx: Context, _ syn: PatternBindingListSyntax) throws -> PatternBindingListSyntax
	static func VisitPatternBinding(_ ctx: Context, _ syn: PatternBindingSyntax) throws -> PatternBindingSyntax

	static func VisitTuplePatternElementList(_ ctx: Context, _ syn: TuplePatternElementListSyntax) throws -> TuplePatternElementListSyntax
	static func VisitTuplePatternElement(_ ctx: Context, _ syn: TuplePatternElementSyntax) throws -> TuplePatternElementSyntax


	// MARK: - Type
	static func VisitType(_ ctx: Context, _ syn: TypeSyntax) throws -> TypeSyntax
	static func VisitArrayType(_ ctx: Context, _ syn: ArrayTypeSyntax) throws -> ArrayTypeSyntax
	static func VisitAttributedType(_ ctx: Context, _ syn: AttributedTypeSyntax) throws -> AttributedTypeSyntax
	static func VisitClassRestrictionType(_ ctx: Context, _ syn: ClassRestrictionTypeSyntax) throws -> ClassRestrictionTypeSyntax
	static func VisitCompositionType(_ ctx: Context, _ syn: CompositionTypeSyntax) throws -> CompositionTypeSyntax
	static func VisitDictionaryType(_ ctx: Context, _ syn: DictionaryTypeSyntax) throws -> DictionaryTypeSyntax
	static func VisitFunctionType(_ ctx: Context, _ syn: FunctionTypeSyntax) throws -> FunctionTypeSyntax
	static func VisitIdentifierType(_ ctx: Context, _ syn: IdentifierTypeSyntax) throws -> IdentifierTypeSyntax
	static func VisitImplicitlyUnwrappedOptionalType(_ ctx: Context, _ syn: ImplicitlyUnwrappedOptionalTypeSyntax) throws -> ImplicitlyUnwrappedOptionalTypeSyntax
	static func VisitMemberType(_ ctx: Context, _ syn: MemberTypeSyntax) throws -> MemberTypeSyntax
	static func VisitMetatypeType(_ ctx: Context, _ syn: MetatypeTypeSyntax) throws -> MetatypeTypeSyntax
	static func VisitMissingType(_ ctx: Context, _ syn: MissingTypeSyntax) throws -> MissingTypeSyntax
	static func VisitNamedOpaqueReturnType(_ ctx: Context, _ syn: NamedOpaqueReturnTypeSyntax) throws -> NamedOpaqueReturnTypeSyntax
	static func VisitOptionalType(_ ctx: Context, _ syn: OptionalTypeSyntax) throws -> OptionalTypeSyntax
	static func VisitPackElementType(_ ctx: Context, _ syn: PackElementTypeSyntax) throws -> PackElementTypeSyntax
	static func VisitPackExpansionType(_ ctx: Context, _ syn: PackExpansionTypeSyntax) throws -> PackExpansionTypeSyntax
	static func VisitSomeOrAnyType(_ ctx: Context, _ syn: SomeOrAnyTypeSyntax) throws -> SomeOrAnyTypeSyntax
	static func VisitSuppressedType(_ ctx: Context, _ syn: SuppressedTypeSyntax) throws -> SuppressedTypeSyntax
	static func VisitTupleType(_ ctx: Context, _ syn: TupleTypeSyntax) throws -> TupleTypeSyntax

	static func VisitCompositionTypeElementList(_ ctx: Context, _ syn: CompositionTypeElementListSyntax) throws -> CompositionTypeElementListSyntax
	static func VisitCompositionTypeElement(_ ctx: Context, _ syn: CompositionTypeElementSyntax) throws -> CompositionTypeElementSyntax

	static func VisitTypeAnnotation(_ ctx: Context, _ syn: TypeAnnotationSyntax) throws -> TypeAnnotationSyntax

	static func VisitTupleTypeElementList(_ ctx: Context, _ syn: TupleTypeElementListSyntax) throws -> TupleTypeElementListSyntax
	static func VisitTupleTypeElement(_ ctx: Context, _ syn: TupleTypeElementSyntax) throws -> TupleTypeElementSyntax

	static func VisitTypeSpecifierList(_ ctx: Context, _ syn: TypeSpecifierListSyntax) throws -> TypeSpecifierListSyntax
	static func VisitTypeSpecifierListElement(_ ctx: Context, _ syn: TypeSpecifierListSyntax.Element) throws -> TypeSpecifierListSyntax.Element
	static func VisitSimpleTypeSpecifier(_ ctx: Context, _ syn: SimpleTypeSpecifierSyntax) throws -> SimpleTypeSpecifierSyntax
	@_spi(ExperimentalLanguageFeatures)
	static func VisitLifetimeTypeSpecifier(_ ctx: Context, _ syn: LifetimeTypeSpecifierSyntax) throws -> LifetimeTypeSpecifierSyntax
	@_spi(ExperimentalLanguageFeatures)
	static func VisitLifetimeSpecifierArgumentList(_ ctx: Context, _ syn: LifetimeSpecifierArgumentListSyntax) throws -> LifetimeSpecifierArgumentListSyntax
	@_spi(ExperimentalLanguageFeatures)
	static func VisitLifetimeSpecifierArgument(_ ctx: Context, _ syn: LifetimeSpecifierArgumentSyntax) throws -> LifetimeSpecifierArgumentSyntax

	static func VisitTypeEffectSpecifiers(_ ctx: Context, _ syn: TypeEffectSpecifiersSyntax) throws -> TypeEffectSpecifiersSyntax

	// MARK: - Clause
	static func VisitInitializerClause(_ ctx: Context, _ syn: InitializerClauseSyntax) throws -> InitializerClauseSyntax
	static func VisitTypeInitializerClause(_ ctx: Context, _ syn: TypeInitializerClauseSyntax) throws -> TypeInitializerClauseSyntax

	static func VisitInheritanceClause(_ ctx: Context, _ syn: InheritanceClauseSyntax) throws -> InheritanceClauseSyntax
	static func VisitInheritedTypeList(_ ctx: Context, _ syn: InheritedTypeListSyntax) throws -> InheritedTypeListSyntax
	static func VisitInheritedType(_ ctx: Context, _ syn: InheritedTypeSyntax) throws -> InheritedTypeSyntax

	static func VisitGenericArgumentClause(_ ctx: Context, _ syn: GenericArgumentClauseSyntax) throws -> GenericArgumentClauseSyntax
	static func VisitGenericArgumentList(_ ctx: Context, _ syn: GenericArgumentListSyntax) throws -> GenericArgumentListSyntax
	static func VisitGenericArgument(_ ctx: Context, _ syn: GenericArgumentSyntax) throws -> GenericArgumentSyntax

	static func VisitThrowsClause(_ ctx: Context, _ syn: ThrowsClauseSyntax) throws -> ThrowsClauseSyntax
	static func VisitCatchClauseList(_ ctx: Context, _ syn: CatchClauseListSyntax) throws -> CatchClauseListSyntax
	static func VisitCatchClause(_ ctx: Context, _ syn: CatchClauseSyntax) throws -> CatchClauseSyntax
	static func VisitCatchItemList(_ ctx: Context, _ syn: CatchItemListSyntax) throws -> CatchItemListSyntax
	static func VisitCatchItem(_ ctx: Context, _ syn: CatchItemSyntax) throws -> CatchItemSyntax

	static func VisitWhereClause(_ ctx: Context, _ syn: WhereClauseSyntax) throws -> WhereClauseSyntax

	static func VisitYieldedExpressionsClause(_ ctx: Context, _ syn: YieldedExpressionsClauseSyntax) throws -> YieldedExpressionsClauseSyntax
	static func VisitYieldedExpressionList(_ ctx: Context, _ syn: YieldedExpressionListSyntax) throws -> YieldedExpressionListSyntax
	static func VisitYieldedExpression(_ ctx: Context, _ syn: YieldedExpressionSyntax) throws -> YieldedExpressionSyntax

	static func VisitReturnClause(_ ctx: Context, _ syn: ReturnClauseSyntax) throws -> ReturnClauseSyntax

	static func VisitGenericParameterClause(_ ctx: Context, _ syn: GenericParameterClauseSyntax) throws -> GenericParameterClauseSyntax
	static func VisitGenericParameterList(_ ctx: Context, _ syn: GenericParameterListSyntax) throws -> GenericParameterListSyntax
	static func VisitGenericParameter(_ ctx: Context, _ syn: GenericParameterSyntax) throws -> GenericParameterSyntax
	static func VisitGenericWhereClause(_ ctx: Context, _ syn: GenericWhereClauseSyntax) throws -> GenericWhereClauseSyntax
	static func VisitGenericRequirementList(_ ctx: Context, _ syn: GenericRequirementListSyntax) throws -> GenericRequirementListSyntax
	static func VisitGenericRequirement(_ ctx: Context, _ syn: GenericRequirementSyntax) throws -> GenericRequirementSyntax
	static func VisitGenericRequirementRequirement(_ ctx: Context, _ syn: GenericRequirementSyntax.Requirement) throws -> GenericRequirementSyntax.Requirement
	static func VisitSameTypeRequirement(_ ctx: Context, _ syn: SameTypeRequirementSyntax) throws -> SameTypeRequirementSyntax
	static func VisitConformanceRequirement(_ ctx: Context, _ syn: ConformanceRequirementSyntax) throws -> ConformanceRequirementSyntax
	static func VisitLayoutRequirement(_ ctx: Context, _ syn: LayoutRequirementSyntax) throws -> LayoutRequirementSyntax

	static func VisitPrimaryAssociatedTypeClause(_ ctx: Context, _ syn: PrimaryAssociatedTypeClauseSyntax) throws -> PrimaryAssociatedTypeClauseSyntax
	static func VisitPrimaryAssociatedTypeList(_ ctx: Context, _ syn: PrimaryAssociatedTypeListSyntax) throws -> PrimaryAssociatedTypeListSyntax
	static func VisitPrimaryAssociatedType(_ ctx: Context, _ syn: PrimaryAssociatedTypeSyntax) throws -> PrimaryAssociatedTypeSyntax

	static func VisitIfConfigClauseList(_ ctx: Context, _ syn: IfConfigClauseListSyntax) throws -> IfConfigClauseListSyntax
	static func VisitIfConfigClause(_ ctx: Context, _ syn: IfConfigClauseSyntax) throws -> IfConfigClauseSyntax
	static func VisitIfConfigClauseElements(_ ctx: Context, _ syn: IfConfigClauseSyntax.Elements) throws -> IfConfigClauseSyntax.Elements


	// MARK: - Accessor
	static func VisitAccessorBlock(_ ctx: Context, _ syn: AccessorBlockSyntax) throws -> AccessorBlockSyntax
	static func VisitAccessorBlockAccessors(_ ctx: Context, _ syn: AccessorBlockSyntax.Accessors) throws -> AccessorBlockSyntax.Accessors
	static func VisitAccessorDeclList(_ ctx: Context, _ syn: AccessorDeclListSyntax) throws -> AccessorDeclListSyntax

	static func VisitAccessorParameters(_ ctx: Context, _ syn: AccessorParametersSyntax) throws -> AccessorParametersSyntax
	static func VisitAccessorEffectSpecifiers(_ ctx: Context, _ syn: AccessorEffectSpecifiersSyntax) throws -> AccessorEffectSpecifiersSyntax


	// MARK: - Version
	static func VisitPlatformVersionItemList(_ ctx: Context, _ syn: PlatformVersionItemListSyntax) throws -> PlatformVersionItemListSyntax
	static func VisitPlatformVersionItem(_ ctx: Context, _ syn: PlatformVersionItemSyntax) throws -> PlatformVersionItemSyntax
	static func VisitPlatformVersion(_ ctx: Context, _ syn: PlatformVersionSyntax) throws -> PlatformVersionSyntax
	static func VisitVersionTuple(_ ctx: Context, _ syn: VersionTupleSyntax) throws -> VersionTupleSyntax
	static func VisitVersionComponentList(_ ctx: Context, _ syn: VersionComponentListSyntax) throws -> VersionComponentListSyntax
	static func VisitVersionComponent(_ ctx: Context, _ syn: VersionComponentSyntax) throws -> VersionComponentSyntax


	// MARK: - Attribute
	static func VisitAttributeList(_ ctx: Context, _ syn: AttributeListSyntax) throws -> AttributeListSyntax
	static func VisitAttributeListElement(_ ctx: Context, _ syn: AttributeListSyntax.Element) throws -> AttributeListSyntax.Element
	static func VisitAttribute(_ ctx: Context, _ syn: AttributeSyntax) throws -> AttributeSyntax
	static func VisitAttributeArguments(_ ctx: Context, _ syn: AttributeSyntax.Arguments) throws -> AttributeSyntax.Arguments
	static func VisitImplementsAttributeArguments(_ ctx: Context, _ syn: ImplementsAttributeArgumentsSyntax) throws -> ImplementsAttributeArgumentsSyntax
	static func VisitBackDeployedAttributeArguments(_ ctx: Context, _ syn: BackDeployedAttributeArgumentsSyntax) throws -> BackDeployedAttributeArgumentsSyntax
	static func VisitConventionAttributeArguments(_ ctx: Context, _ syn: ConventionAttributeArgumentsSyntax) throws -> ConventionAttributeArgumentsSyntax
	static func VisitConventionWitnessMethodAttributeArguments(_ ctx: Context, _ syn: ConventionWitnessMethodAttributeArgumentsSyntax) throws -> ConventionWitnessMethodAttributeArgumentsSyntax
	static func VisitOpaqueReturnTypeOfAttributeArguments(_ ctx: Context, _ syn: OpaqueReturnTypeOfAttributeArgumentsSyntax) throws -> OpaqueReturnTypeOfAttributeArgumentsSyntax
	static func VisitExposeAttributeArguments(_ ctx: Context, _ syn: ExposeAttributeArgumentsSyntax) throws -> ExposeAttributeArgumentsSyntax
	static func VisitOriginallyDefinedInAttributeArguments(_ ctx: Context, _ syn: OriginallyDefinedInAttributeArgumentsSyntax) throws -> OriginallyDefinedInAttributeArgumentsSyntax
	static func VisitUnderscorePrivateAttributeArguments(_ ctx: Context, _ syn: UnderscorePrivateAttributeArgumentsSyntax) throws -> UnderscorePrivateAttributeArgumentsSyntax
	static func VisitDynamicReplacementAttributeArguments(_ ctx: Context, _ syn: DynamicReplacementAttributeArgumentsSyntax) throws -> DynamicReplacementAttributeArgumentsSyntax
	static func VisitUnavailableFromAsyncAttributeArguments(_ ctx: Context, _ syn: UnavailableFromAsyncAttributeArgumentsSyntax) throws -> UnavailableFromAsyncAttributeArgumentsSyntax
	static func VisitEffectsAttributeArgumentList(_ ctx: Context, _ syn: EffectsAttributeArgumentListSyntax) throws -> EffectsAttributeArgumentListSyntax
	static func VisitDocumentationAttributeArgumentList(_ ctx: Context, _ syn: DocumentationAttributeArgumentListSyntax) throws -> DocumentationAttributeArgumentListSyntax
	static func VisitDocumentationAttributeArgument(_ ctx: Context, _ syn: DocumentationAttributeArgumentSyntax) throws -> DocumentationAttributeArgumentSyntax
	static func VisitDocumentationAttributeArgumentValue(_ ctx: Context, _ syn: DocumentationAttributeArgumentSyntax.Value) throws -> DocumentationAttributeArgumentSyntax.Value

	static func VisitSpecializeAttributeArgumentList(_ ctx: Context, _ syn: SpecializeAttributeArgumentListSyntax) throws -> SpecializeAttributeArgumentListSyntax
	static func VisitSpecializeAttributeArgumentListElement(_ ctx: Context, _ syn: SpecializeAttributeArgumentListSyntax.Element) throws -> SpecializeAttributeArgumentListSyntax.Element
	static func VisitLabeledSpecializeArgument(_ ctx: Context, _ syn: LabeledSpecializeArgumentSyntax) throws -> LabeledSpecializeArgumentSyntax
	static func VisitSpecializeAvailabilityArgument(_ ctx: Context, _ syn: SpecializeAvailabilityArgumentSyntax) throws -> SpecializeAvailabilityArgumentSyntax
	static func VisitSpecializeTargetFunctionArgument(_ ctx: Context, _ syn: SpecializeTargetFunctionArgumentSyntax) throws -> SpecializeTargetFunctionArgumentSyntax


	// MARK: - Availability
	static func VisitAvailabilityLabeledArgument(_ ctx: Context, _ syn: AvailabilityLabeledArgumentSyntax) throws -> AvailabilityLabeledArgumentSyntax
	static func VisitAvailabilityLabeledArgumentValue(_ ctx: Context, _ syn: AvailabilityLabeledArgumentSyntax.Value) throws -> AvailabilityLabeledArgumentSyntax.Value

	static func VisitAvailabilityArgumentList(_ ctx: Context, _ syn: AvailabilityArgumentListSyntax) throws -> AvailabilityArgumentListSyntax
	static func VisitAvailabilityArgument(_ ctx: Context, _ syn: AvailabilityArgumentSyntax) throws -> AvailabilityArgumentSyntax
	static func VisitAvailabilityArgumentArgument(_ ctx: Context, _ syn: AvailabilityArgumentSyntax.Argument) throws -> AvailabilityArgumentSyntax.Argument


	// MARK: - Element
	static func VisitArrayElementList(_ ctx: Context, _ syn: ArrayElementListSyntax) throws -> ArrayElementListSyntax
	static func VisitArrayElement(_ ctx: Context, _ syn: ArrayElementSyntax) throws -> ArrayElementSyntax

	static func VisitDictionaryExprContent(_ ctx: Context, _ syn: DictionaryExprSyntax.Content) throws -> DictionaryExprSyntax.Content
	static func VisitDictionaryElementList(_ ctx: Context, _ syn: DictionaryElementListSyntax) throws -> DictionaryElementListSyntax
	static func VisitDictionaryElement(_ ctx: Context, _ syn: DictionaryElementSyntax) throws -> DictionaryElementSyntax

	static func VisitEnumCaseElementList(_ ctx: Context, _ syn: EnumCaseElementListSyntax) throws -> EnumCaseElementListSyntax
	static func VisitEnumCaseElement(_ ctx: Context, _ syn: EnumCaseElementSyntax) throws -> EnumCaseElementSyntax
	static func VisitEnumCaseParameterClause(_ ctx: Context, _ syn: EnumCaseParameterClauseSyntax) throws -> EnumCaseParameterClauseSyntax
	static func VisitEnumCaseParameterList(_ ctx: Context, _ syn: EnumCaseParameterListSyntax) throws -> EnumCaseParameterListSyntax
	static func VisitEnumCaseParameter(_ ctx: Context, _ syn: EnumCaseParameterSyntax) throws -> EnumCaseParameterSyntax


	// MARK: - Closure
	static func VisitClosureSignature(_ ctx: Context, _ syn: ClosureSignatureSyntax) throws -> ClosureSignatureSyntax
	static func VisitClosureSignatureParameterClause(_ ctx: Context, _ syn: ClosureSignatureSyntax.ParameterClause) throws -> ClosureSignatureSyntax.ParameterClause
	static func VisitClosureCaptureClause(_ ctx: Context, _ syn: ClosureCaptureClauseSyntax) throws -> ClosureCaptureClauseSyntax
	static func VisitClosureCaptureList(_ ctx: Context, _ syn: ClosureCaptureListSyntax) throws -> ClosureCaptureListSyntax
	static func VisitClosureCapture(_ ctx: Context, _ syn: ClosureCaptureSyntax) throws -> ClosureCaptureSyntax
	static func VisitClosureCaptureSpecifier(_ ctx: Context, _ syn: ClosureCaptureSpecifierSyntax) throws -> ClosureCaptureSpecifierSyntax
	static func VisitClosureShorthandParameterList(_ ctx: Context, _ syn: ClosureShorthandParameterListSyntax) throws -> ClosureShorthandParameterListSyntax
	static func VisitClosureShorthandParameter(_ ctx: Context, _ syn: ClosureShorthandParameterSyntax) throws -> ClosureShorthandParameterSyntax
	static func VisitClosureParameterClause(_ ctx: Context, _ syn: ClosureParameterClauseSyntax) throws -> ClosureParameterClauseSyntax
	static func VisitClosureParameterList(_ ctx: Context, _ syn: ClosureParameterListSyntax) throws -> ClosureParameterListSyntax
	static func VisitClosureParameter(_ ctx: Context, _ syn: ClosureParameterSyntax) throws -> ClosureParameterSyntax

	static func VisitMultipleTrailingClosureElementList(_ ctx: Context, _ syn: MultipleTrailingClosureElementListSyntax) throws -> MultipleTrailingClosureElementListSyntax
	static func VisitMultipleTrailingClosureElement(_ ctx: Context, _ syn: MultipleTrailingClosureElementSyntax) throws -> MultipleTrailingClosureElementSyntax


	// MARK: - Function
	static func VisitFunctionSignature(_ ctx: Context, _ syn: FunctionSignatureSyntax) throws -> FunctionSignatureSyntax
	static func VisitFunctionParameterClause(_ ctx: Context, _ syn: FunctionParameterClauseSyntax) throws -> FunctionParameterClauseSyntax
	static func VisitFunctionParameterList(_ ctx: Context, _ syn: FunctionParameterListSyntax) throws -> FunctionParameterListSyntax
	static func VisitFunctionParameter(_ ctx: Context, _ syn: FunctionParameterSyntax) throws -> FunctionParameterSyntax
	static func VisitFunctionEffectSpecifiers(_ ctx: Context, _ syn: FunctionEffectSpecifiersSyntax) throws -> FunctionEffectSpecifiersSyntax


	// MARK: - Switch
	static func VisitSwitchCaseList(_ ctx: Context, _ syn: SwitchCaseListSyntax) throws -> SwitchCaseListSyntax
	static func VisitSwitchCaseListElement(_ ctx: Context, _ syn: SwitchCaseListSyntax.Element) throws -> SwitchCaseListSyntax.Element
	static func VisitSwitchCase(_ ctx: Context, _ syn: SwitchCaseSyntax) throws -> SwitchCaseSyntax
	static func VisitSwitchCaseLabel(_ ctx: Context, _ syn: SwitchCaseSyntax.Label) throws -> SwitchCaseSyntax.Label
	static func VisitSwitchDefaultLabel(_ ctx: Context, _ syn: SwitchDefaultLabelSyntax) throws -> SwitchDefaultLabelSyntax
	static func VisitSwitchCaseLabel(_ ctx: Context, _ syn: SwitchCaseLabelSyntax) throws -> SwitchCaseLabelSyntax
	static func VisitSwitchCaseItemList(_ ctx: Context, _ syn: SwitchCaseItemListSyntax) throws -> SwitchCaseItemListSyntax
	static func VisitSwitchCaseItem(_ ctx: Context, _ syn: SwitchCaseItemSyntax) throws -> SwitchCaseItemSyntax


	// MARK: - Selector
	static func VisitObjCSelectorPieceList(_ ctx: Context, _ syn: ObjCSelectorPieceListSyntax) throws -> ObjCSelectorPieceListSyntax
	static func VisitObjCSelectorPiece(_ ctx: Context, _ syn: ObjCSelectorPieceSyntax) throws -> ObjCSelectorPieceSyntax


	// MARK: - Calculus
	static func VisitDifferentiableAttributeArguments(_ ctx: Context, _ syn: DifferentiableAttributeArgumentsSyntax) throws -> DifferentiableAttributeArgumentsSyntax
	static func VisitDifferentiabilityWithRespectToArgument(_ ctx: Context, _ syn: DifferentiabilityWithRespectToArgumentSyntax) throws -> DifferentiabilityWithRespectToArgumentSyntax
	static func VisitDifferentiabilityWithRespectToArgumentArguments(_ ctx: Context, _ syn: DifferentiabilityWithRespectToArgumentSyntax.Arguments) throws -> DifferentiabilityWithRespectToArgumentSyntax.Arguments
	static func VisitDifferentiabilityArguments(_ ctx: Context, _ syn: DifferentiabilityArgumentsSyntax) throws -> DifferentiabilityArgumentsSyntax
	static func VisitDifferentiabilityArgumentList(_ ctx: Context, _ syn: DifferentiabilityArgumentListSyntax) throws -> DifferentiabilityArgumentListSyntax
	static func VisitDifferentiabilityArgument(_ ctx: Context, _ syn: DifferentiabilityArgumentSyntax) throws -> DifferentiabilityArgumentSyntax

	static func VisitDerivativeAttributeArguments(_ ctx: Context, _ syn: DerivativeAttributeArgumentsSyntax) throws -> DerivativeAttributeArgumentsSyntax


	// MARK: - KeyPath
	static func VisitKeyPathComponentList(_ ctx: Context, _ syn: KeyPathComponentListSyntax) throws -> KeyPathComponentListSyntax
	static func VisitKeyPathComponent(_ ctx: Context, _ syn: KeyPathComponentSyntax) throws -> KeyPathComponentSyntax
	static func VisitKeyPathComponentComponent(_ ctx: Context, _ syn: KeyPathComponentSyntax.Component) throws -> KeyPathComponentSyntax.Component
	static func VisitKeyPathPropertyComponent(_ ctx: Context, _ syn: KeyPathPropertyComponentSyntax) throws -> KeyPathPropertyComponentSyntax
	static func VisitKeyPathSubscriptComponent(_ ctx: Context, _ syn: KeyPathSubscriptComponentSyntax) throws -> KeyPathSubscriptComponentSyntax
	static func VisitKeyPathOptionalComponent(_ ctx: Context, _ syn: KeyPathOptionalComponentSyntax) throws -> KeyPathOptionalComponentSyntax


	// MARK: - Random
	static func VisitSimpleStringLiteralSegmentList(_ ctx: Context, _ syn: SimpleStringLiteralSegmentListSyntax) throws -> SimpleStringLiteralSegmentListSyntax
	static func VisitStringSegment(_ ctx: Context, _ syn: StringSegmentSyntax) throws -> StringSegmentSyntax

	static func VisitStringLiteralSegmentList(_ ctx: Context, _ syn: StringLiteralSegmentListSyntax) throws -> StringLiteralSegmentListSyntax
	static func VisitStringLiteralSegmentListElement(_ ctx: Context, _ syn: StringLiteralSegmentListSyntax.Element) throws -> StringLiteralSegmentListSyntax.Element
	static func VisitExpressionSegment(_ ctx: Context, _ syn: ExpressionSegmentSyntax) throws -> ExpressionSegmentSyntax

	static func VisitDeinitializerEffectSpecifiers(_ ctx: Context, _ syn: DeinitializerEffectSpecifiersSyntax) throws -> DeinitializerEffectSpecifiersSyntax

	static func VisitImportPathComponentList(_ ctx: Context, _ syn: ImportPathComponentListSyntax) throws -> ImportPathComponentListSyntax
	static func VisitImportPathComponent(_ ctx: Context, _ syn: ImportPathComponentSyntax) throws -> ImportPathComponentSyntax

	static func VisitOperatorPrecedenceAndTypes(_ ctx: Context, _ syn: OperatorPrecedenceAndTypesSyntax) throws -> OperatorPrecedenceAndTypesSyntax
	static func VisitDesignatedTypeList(_ ctx: Context, _ syn: DesignatedTypeListSyntax) throws -> DesignatedTypeListSyntax
	static func VisitDesignatedType(_ ctx: Context, _ syn: DesignatedTypeSyntax) throws -> DesignatedTypeSyntax

	static func VisitPoundSourceLocationArguments(_ ctx: Context, _ syn: PoundSourceLocationArgumentsSyntax) throws -> PoundSourceLocationArgumentsSyntax

	static func VisitPrecedenceGroupAttributeList(_ ctx: Context, _ syn: PrecedenceGroupAttributeListSyntax) throws -> PrecedenceGroupAttributeListSyntax
	static func VisitPrecedenceGroupAttributeListElement(_ ctx: Context, _ syn: PrecedenceGroupAttributeListSyntax.Element) throws -> PrecedenceGroupAttributeListSyntax.Element
	static func VisitPrecedenceGroupRelation(_ ctx: Context, _ syn: PrecedenceGroupRelationSyntax) throws -> PrecedenceGroupRelationSyntax
	static func VisitPrecedenceGroupAssignment(_ ctx: Context, _ syn: PrecedenceGroupAssignmentSyntax) throws -> PrecedenceGroupAssignmentSyntax
	static func VisitPrecedenceGroupAssociativity(_ ctx: Context, _ syn: PrecedenceGroupAssociativitySyntax) throws -> PrecedenceGroupAssociativitySyntax
	static func VisitPrecedenceGroupNameList(_ ctx: Context, _ syn: PrecedenceGroupNameListSyntax) throws -> PrecedenceGroupNameListSyntax
	static func VisitPrecedenceGroupName(_ ctx: Context, _ syn: PrecedenceGroupNameSyntax) throws -> PrecedenceGroupNameSyntax
}
