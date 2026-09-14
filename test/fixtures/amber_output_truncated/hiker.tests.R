library(RUnit)
source('hiker.R')

for (i in 1:20000) {
    cat("debug: i is", i, "and the answer is", answer(), "\n")
}

checkEquals(42, answer())

print("All tests passed")
