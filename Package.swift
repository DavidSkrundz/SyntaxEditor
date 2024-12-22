// swift-tools-version: 6.0

import PackageDescription
import CompilerPluginSupport

let package = Package(
	name: "SyntaxEditor",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.macCatalyst(.v13),
	],
	products: [
		.library(
			name: "SyntaxEditor",
			targets: ["SyntaxEditor"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-syntax.git", from: "600.0.0"),
		.package(url: "https://github.com/DavidSkrundz/Forwarding.git", from: "1.0.0"),
	],
	targets: [
		.macro(
			name: "VisitorMacros",
			dependencies: [
				.product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
				.product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
			]
		),
		.target(name: "Visitor", dependencies: ["VisitorMacros"]),
		.target(name: "SyntaxEditor", dependencies: [
			"Visitor",
			.product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
			.product(name: "Forwarding", package: "Forwarding"),
		]),
	]
)
