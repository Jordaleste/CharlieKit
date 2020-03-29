import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DoubleRoundingTests.allTests),
        testCase(FloatRoundingTests.allTests)
    ]
}
#endif
