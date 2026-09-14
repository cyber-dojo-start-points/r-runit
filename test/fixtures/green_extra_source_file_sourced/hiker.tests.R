library(RUnit)
source('hiker.R')

checkEquals(42, answer())
checkEquals(2, checksum(answer()))

print("All tests passed")
