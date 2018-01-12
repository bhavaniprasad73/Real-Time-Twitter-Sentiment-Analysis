# Loading the positive words from a file for calculating the Sentiment of the tweet

positive <- scan('C:/Users/ebhavaniprasad/Desktop/Big_59000/positive.txt', what = 'character')
print(positive)
class(positive)
str(positive)

# Loading the negative words from a file for calculating the Sentiment of the tweet

negative <- scan('C:/Users/ebhavaniprasad/Desktop/Big_59000/negative.txt', what = 'character')
print(negative)
class(negative)
str(negative)
