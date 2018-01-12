# Real-Time-Twitter-Sentiment-Analysis
Real-Time Twitter Sentiment Analysis on Hurricane Harvey
Steps to execute the R-Script:

Twitter_API:

1. In order to use the Libraries in the script, first install the packages using the function as 
      install.packages("twitteR") for all the libraries in the script before using the library.

2. To run the Twitter_API script you need to first register with the twitter app and provide the twitter app credentials in the script in the consumer_key, consumer_secret, accesss_token, access_secret variables.

3. execute this function to get the maximum count of the entries that RStduio allows "getOption("max.print")"
 
4.  execute this function in order to set the maximum entries that you want Rstudio to allow for performing analysis "options(max.print=10000)", here it will allow 10000 entries or tweets.

5. To check the connection establish or not, just search for the topic to extract tweets

searchTwitter("hurricaneharvey", n=1000, lang= 'en')

This will extract the tweets from twitter using the Twitter APIs into RStudio environment.


load_words:

In the original zipped folder there is a folder called Reference Words in this there are negative.txt, positive.txt files. 

1. In the load_word script, in scan() function provide the path for the positive.txt and negative.txt files.


PreProcessing_tweets:
 
In the PreProcessing_tweets. R script there is a number1 =3000, in the place of 3000 provide the number of tweets that you want to extract the tweets from the twitter. 

In the line 23 : there is a write.csv(df, file="Hurricane_Harvey3000.csv")
 here the extracted raw tweets are stored in a .csv file. 


information_analysis:

In this script, in line 118: write.csv(Scores, file="Scores3000.csv") here this will stores the final result in a .csv files for the easy look up in the file format or for using for visualization it is helpful.

In this script, in line 121: write.csv(Percentages, file="Percentages3000.csv") here this will stores the final sentiment percenatage result in a .csv file.


Visualization of Results in TABLEAU:

The visualization is very dynamic, so I have used tableau. I have provided the .twbx files in the Tableau Visualization folder inside the original zip folder, it will open the visualization in the tableau that shows the Frequency distribution of tweet scores, Pie chart for the Percentage of the tweet score.


Dashboard in TABLEAU: 

To open this files, you need to have tableau software installed on the machine.

I have created the dashboard for visualizing the information interactively. I have provided the .twbx files that will show the visualization charts for the tweet information in a dashboard and if you hoover on the charts or graphs it will show that statistical resuts. It will show the dataset for the tweets. 


