source('hiker.R')

test.answer_is_42 <- function() {
    checkEquals(42, answer())
}

test.answer_in_words <- function() {
    checkEquals("forty two", answer_in_words())
}
