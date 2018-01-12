# Installing the library for using some of its functions
library(compare)
number1 =3000

a <- searchTwitter("hurricaneharvey", n=number1, lang = "en")
class(a)
# Prints the top 6 tweets that was extracted from the twitter
head(a, 6)
# Prints the last 6 tweets that was extracted from the twitter
tail(a, 6)
# It converts a list to a data frame that stores all the information of tweets
df <- do.call("rbind", lapply(a, as.data.frame))
# Shows the dimension of the data frame rows and columns information
dim(df)
class(df)
# It shows the all columns names that are related to the tweet data
names(df)
head(df, 6)
tail(df, 6)
# Converts the ScreenName column to a list
as.list(df$screenName)
# It stores the extracted tweet data to an excel sheet
write.csv(df, file="Hurricane_Harvey3000.csv")
r <- df$screenName
print(r)
class(r)
# Prints the text data from the extracted twitter data 
s <- df[["text"]]
s <- as.list(s)
print(s)
head(s, 1)
class(s)
# It removes the emoticons from the tweet
f <- sapply(s,function(row) iconv(row, "latin1", "ASCII", sub=""))
print(f)
class(f)
# It removes the urls from the tweet
url <- gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", " ", f)
url[[100]]
class(url)
# It removes the retweets from the tweet
rt = gsub('\\b+RT', '', url)                     ## Remove RT
print(rt)
class(rt)
# It removes the hashtags from the tweet
htag = gsub('#\\S+', '', rt)                      ## Remove Hashtags 
print(htag)
class(htag)
# It removes the mentions from the tweet
mt = gsub('@\\S+', '', htag)                        ## Remove Mentions
print(mt)
class(mt)


f[[100]]
head(url,1)
# It removes the control words from the tweet
cw = gsub('[[:cntrl:]]', '', mt)                     ## Remove Controls and special characters
print(cw)
class(cw)
# It removes the punctuations from the tweet
e <- str_replace_all(cw, '[[:punct:]]', ' ')
print(e)
class(e)
print("Now it shows how data is cleaned in each step")
head(s, 1)

head(f, 1)

head(url, 1)

head(rt, 1)

head(htag, 1)

head(mt, 1)

head(cw, 1)

head(e, 1)


