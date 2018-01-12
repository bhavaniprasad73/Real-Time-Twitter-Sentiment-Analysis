library("plyr")
library("stringr")

setwd("C:/Users/ebhavaniprasad/Desktop/Big_59000")
tweet_text= low2
vocab_n= negative
vocab_p= positive

# Here the function will recursively compares the tweet with the word lists and generates score 
Neg_Polarity <- function(tweet_text, vocab_p, vocab_n, .progress='none')
{
  points1 <- laply(tweet_text, function(tweet_text, vocab_p, vocab_n){
    tweet1 <- str_split(tweet_text, '\\s+')
    tweet2 <- unlist(tweet1)
    p_comp <- match(tweet2, vocab_p)
    n_comp <- match(tweet2, vocab_n)
    p_comp <- !is.na(p_comp)
    n_comp <- !is.na(n_comp)
    
    pscore = sum(n_comp)
    
    return(pscore)
  }, vocab_p, vocab_n, .progress=.progress)
  scores.df <- data.frame(score=points1, text=tweet_text)
  
  return(scores.df$score)
}

# Calling a function by passing parameters 
list_negative= Neg_Polarity(low2, positive, negative)
print(list_negative)

