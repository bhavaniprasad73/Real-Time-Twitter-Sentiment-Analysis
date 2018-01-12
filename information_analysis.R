library(plotrix)
getwd()
# It creates a dataframe of the total score, positive score and negative score
total = data.frame(list_score, list_positive, list_negative)
print(total)
total[[2]]                           # prints the positive score of the tweet

max_pos = max(total[[2]])
cat("The maximum positive score in a tweet :", max_pos)
least_neg = min(total[[3]])
cat("The minimum negative score in a tweet :", least_neg)
most_neg = max(total[[3]])
cat("The maximum negative score in a tweet :", most_neg)
max_score = max(total[[1]])
cat("The most positive tweet's sentiment score is :", max_score)
min_score = min(total[[1]])
min_score

cat("The most negative tweet's sentiment score is :", min_score)
class(min_score)
# prints the scores and a tweet in a dataframe
df.result= data.frame(TOTAL= total, text= low2)
list_res= list(total_scores=total, tweet=low2)

print(list_res)
class(list_res)
final_list= lapply(list_res, `[`, 3)
class(final_list)
final_list[[1]]
which(max(total[[1]])>2)[1]

total[[1]]
# It Finds the index number of the tweet for which has most positive sentiment in it 
ind = (total[[1]]==max_score)
ind1 = which(total[[1]]==max_score)
index = c(ind1)

print(index)

for (i in index) {
ptweeet<- low2[[i]]
ab2 <- ptweeet
}
cat("The one of the most positive tweet of Hurricane Harvey is : \n \n" , ab2)

# It Finds the index number of the tweet for which has most negative sentiment in it 
ind2 = which(total[[1]]==min_score)
index2 = c(ind2)
print(index2)

for (i2 in index2) {
  ptweeet2 <- low2[[i2]]
  ab3 <- ptweeet2
  #print(unique(ab2))
}
cat("The one of the most negative tweet of Hurricane Harvey is : \n \n" , ab3)

total[[1]]
Output_df = data.frame(low2, total)
# It will display top 3 tweets with the scores
head(Output_df, 3)
names(Output_df)
dim(Output_df)

Output_df$low2

g = table( low2, total$list_score, total$list_positive, total$list_negative)
# It will calculate the sum of positive and negative sentiment scores
pos_total = sum(Output_df$list_positive)
neg_total = sum(Output_df$list_negative)
pos_total

# It will calculate the percentage of positive and negative sentiment scores
perc1 = (Output_df$list_positive)*100/pos_total
perc1

perc2 = (Output_df$list_negative)*100/neg_total
perc2

# This will append the percentages of the positive and negative score to the result dataframe 
Result = data.frame(Output_df, pos.percentage =perc1, neg.percentage= perc2)
head(Result)
head(Result, 3)
# It will calculate the sum of neutral sentiment scores in a tweet
neutral_total = sum((Output_df$list_positive)==0 &(Output_df$list_negative)==0)
neutral2 = number1-neutral_total
neutral2
# It will calculate the neutral sentiment score in percentage
neutral.percentage = neutral_total *100/ (pos_total + neg_total+neutral_total)
cat("The neutral sentiment score percentage in overall tweets : ", neutral.percentage, "%")

# It will create the dataframe of percentages of the sentiment scores
percent_df = data.frame(pos_percent= positive.percentage, neg_percent= negative.percentage, neutral_percent= neutral.percentage)
positive.percentage = pos_total *100/(pos_total + neg_total+neutral_total)

# It will calculate the overall positive tweet percentage

cat("The positive sentiment score percentage in tweets : ", positive.percentage, "%")

# It will calculate the overall negative tweet percentage
negative.percentage = neg_total *100/ (pos_total + neg_total+neutral_total)
cat("The negative sentiment score percentage in tweets : ", negative.percentage, "%")
print(percent_df)
 
# It will display the list of the sum of positive, negative, neutral score of tweet
Count_df = data.frame(pos_total= pos_total, neg_total= neg_total, neutral_total= neutral_total)
print(Count_df)

cat(
cat("The polarity of the tweets and its sentiment score in Percentage : \n"),
cat("The positive sentiment score percentage in overall tweets : ", positive.percentage, "%", "\n"),
cat("The negative sentiment score percentage in overall tweets : ", negative.percentage, "%", "\n"),
cat("The neutral sentiment score percentage in overall tweets  : ", neutral.percentage, "%"))

Scores <- data.frame(Positive_Score= list_positive, Negative_Score= list_negative, Total_Score= list_score)
head(Scores)

write.csv(Scores, file="Scores3000.csv")
Percentages <- data.frame(Positive_Percentage= perc1, Negative_Percentage= perc2)
head(Percentages)
write.csv(Percentages, file="Percentages3000.csv")


all_Perc <- data.frame(Pos_Perc= positive.percentage, Neg_perc= negative.percentage, Neut_Perc= neutral.percentage)
all_Perc
write.csv(all_Perc, file="all_perc3000.csv")


# It will return the maximum retweet count for the tweet
f3 <- max(df$retweetCount)
ind3 = which(df$retweetCount >=f3)
index3 = c(ind3)
print(index3)

for (i3 in index3) {
  ptweeet3 <- df$text[i3]
  ab4 <- ptweeet3
  ptweeet4 <- df$screenName[i3]
  ab5 <- ptweeet4
 }
cat("The most retweeted tweet of Hurricane Harvey is : \n \n" , ab4 )
cat("The most retweeted User of Hurricane Harvey Screen Name is : \n \n" , ab5)









