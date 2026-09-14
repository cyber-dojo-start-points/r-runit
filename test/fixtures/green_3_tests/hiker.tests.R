library(RUnit)
source('hiker.R')

checkEquals(42, answer())
checkTrue(answer() > 0)
checkEquals(21, answer() / 2)

print("All tests passed")
