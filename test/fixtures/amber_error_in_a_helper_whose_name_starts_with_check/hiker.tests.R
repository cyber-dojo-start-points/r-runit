library(RUnit)
source('hiker.R')

checkEquals(2, checksum(answer()))

print("All tests passed")
