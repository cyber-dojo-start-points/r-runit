library(RUnit)
source('hiker.R')

checkTrue(answer() > 0)
checkEquals(42, answer())
checkEquals(21, answer() / 2)

print("All tests passed")
