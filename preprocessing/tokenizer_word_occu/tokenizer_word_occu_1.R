library("tidytext")

tokenizer.word.1 <- function(my.texte) {
  
  my.texte <- token_sentence[k,][1]
  book_name <- token_sentence[k,][2][[1]]
  tidy_books <- my.texte %>%
    unnest_tokens(word, sentence)
  if (DEBUG == TRUE) {tidy_books}
  #tidy_books_count = tidy_books %>%
  #  count(word, sort = TRUE) 
  #if (DEBUG == TRUE) {tidy_books_count}
  #TO DO changer k
  tidy_books <- tidy_books %>% mutate(sentence = k, book = book_name)#rep(book_name,dim(tidy_books)[1]))

  return(tidy_books)

}

#tokenizer.word.1(original_books)