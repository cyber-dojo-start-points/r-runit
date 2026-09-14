library(RUnit)
source('fizz_buzz.R')

checkEquals("1", fizz_buzz(1))
checkEquals("Fizz", fizz_buzz(3))
checkEquals("Buzz", fizz_buzz(5))
checkEquals("FizzBuzz", fizz_buzz(15))

print("All tests passed")
