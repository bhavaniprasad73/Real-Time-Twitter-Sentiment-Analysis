# Installing Library for using some of its functions 
library(tm)
library(stringr)

print(e)
class(e)
head(e, 3)
# It replaces the new lines character with a space
slash <- str_replace_all(e, "[\r\n]" , " ")
head(slash, 3)
class(slash)
# It removes numbers from the tweet 
Num <- removeNumbers(slash)
head(Num, 3)
print(Num)
class(Num)
# It converts the tweet to a lowercase
low <- as.list(tolower(Num))
print(low)
head(low, 3)
class(low)
# It removes the slashes from the tweet
low2 <- str_replace_all(low, "[|]" , " ")
head(low2, 3)
class(low2)
require("tm")
 
print("It shows how tweet data is processed and cleaned")

head(slash, 1)

head(Num, 1)

head(low, 1)

head(low2, 1)

class(as.list(low2))



