//This file is the one used if testing this package on Linux instead of a Mac

import XCTest

import CharlieKitTests

var tests = [XCTestCaseEntry]()
tests += DoubleRoundingTests.allTests()
tests += FloatRoundingTests.allTests()
XCTMain(tests)
