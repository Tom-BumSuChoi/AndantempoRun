import ProjectDescription

let organizationID = "kr.co.codegrove"
let appName = "AndantempoRun"
let bundleID = "\(organizationID).\(appName)"

let project = Project(
    name: appName,
    targets: [
        .target(
            name: appName,
            destinations: .iOS,
            product: .app,
            bundleId: bundleID,
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "UIApplicationSceneManifest": [
                        "UIApplicationSupportsMultipleScenes": false,
                    ],
                ]
            ),
            buildableFolders: [
                BuildableFolder(stringLiteral: "\(appName)/Sources"),
                BuildableFolder(stringLiteral: "\(appName)/Resources"),
            ],
            dependencies: []
        ),
        .target(
            name: "\(appName)Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "\(bundleID)Tests",
            infoPlist: .default,
            buildableFolders: [
                BuildableFolder(stringLiteral: "\(appName)/Tests"),
            ],
            dependencies: [.target(name: appName)]
        ),
    ]
)
