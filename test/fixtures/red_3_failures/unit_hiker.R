source('hiker.R')

test.answer_is_42 <- function() {
    checkEquals(42, answer())
}

test.answer_is_under_50 <- function() {
    checkTrue(answer() < 50)
}

test.half_the_answer_is_21 <- function() {
    checkEquals(21, answer() / 2)
}
