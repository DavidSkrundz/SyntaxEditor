@freestanding(declaration, names: arbitrary)
public macro DefineStructWalker(_ struct: Any.Type, _ elements: [(String, Any.Type)]) = #externalMacro(module: "VisitorMacros", type: "DefineStructWalkerMacro")

@freestanding(declaration, names: arbitrary)
public macro DefineListWalker(_ list: Any.Type, _ element: Any.Type) = #externalMacro(module: "VisitorMacros", type: "DefineListWalkerMacro")

@freestanding(declaration, names: arbitrary)
public macro DefineEnumWalker(_ enum: Any.Type, _ cases: [(String, Any.Type)]) = #externalMacro(module: "VisitorMacros", type: "DefineEnumWalkerMacro")

@freestanding(declaration, names: arbitrary)
public macro DefineSubtypeWalker(_ type: Any.Type, _ enum: Any.Type, _ cases: [(String, Any.Type)]) = #externalMacro(module: "VisitorMacros", type: "DefineSubtypeWalkerMacro")
