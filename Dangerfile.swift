import Danger
import DangerSwiftCoverage
import DangerXCodeSummary

let danger = Danger()

let report = XCodeSummary(filePath: "result.json")
report.report()

Coverage.xcodeBuildCoverage(derivedDataFolder: "Build", minimumCoverage: 50, excludedTargets: ["DangerSwiftCoverageTests.xctest"])
