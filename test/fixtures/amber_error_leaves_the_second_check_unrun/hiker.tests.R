library(RUnit)
source('hiker.R')

checkEquals(42, answer())
checkEquals("forty two", answer_in_words())
checkTrue(answer() > 0)

print("All tests passed")
