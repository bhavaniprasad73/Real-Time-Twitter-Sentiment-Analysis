library(twitteR)
library(ROAuth)
library(xlsx) 
library(tm)
library(stringr)
setwd("C:/Users/ebhavaniprasad/Desktop/Big_59000")
getwd()
consumer_key <- "091TpSmfahNl1u1t0pAcDvSk8"
consumer_secret <- "ZxhMB5WMHomjra9eJxKhDsLD6HjQw8Xqi3ReD5DmYU8CWWMzdP"
access_token <- "922659846071209985-ZMqkjyVJtdila3dkeHz2yaw6bGP73Xw"
access_secret <- "p1Fm1K5OfDzhXWHGl91UkLb2xDgaZBbf8vDJGQZ1wlb6F"
download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
cred <- OAuthFactory$new(consumerKey=consumer_key, 
                 consumerSecret= consumer_secret,
                 requestURL='https://api.twitter.com/oauth/request_token', 
                 accessURL='https://api.twitter.com/oauth/access_token', 
                 authURL= 'https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo="cacert.pem")


# It gives the maximum tweets (entries) that Rstudio allows by default
getOption("max.print")
# We can set the maximum entries for our use
options(max.print=10000)




