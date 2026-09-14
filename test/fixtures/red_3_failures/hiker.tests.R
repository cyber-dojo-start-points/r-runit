library(RUnit)

suite <- defineTestSuite("hiker",
                         dirs = ".",
                         testFileRegexp = "^unit_.*\\.R$",
                         testFuncRegexp = "^test\\.")
printTextProtocol(runTestSuite(suite))

print("All tests passed")
