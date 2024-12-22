import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct Plugin: CompilerPlugin {
	let providingMacros: [Macro.Type] = [
		DefineStructWalkerMacro.self,
		DefineListWalkerMacro.self,
		DefineEnumWalkerMacro.self,
		DefineSubtypeWalkerMacro.self,
	]
}
