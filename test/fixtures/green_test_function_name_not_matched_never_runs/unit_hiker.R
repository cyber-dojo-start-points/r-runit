source('hiker.R')

check.answer_is_42 <- function() {
    checkEquals(42, answer())
}
