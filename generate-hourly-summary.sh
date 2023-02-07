#!/bin/bash

curl https://newsapi.org/v2/top-headlines\?apiKey\=7e45935c619c463cb72d32a86d86ee02\&sources\=abc-news,al-jazeera-english,ars-technica,associated-press,axios,bleacher-report,bloomberg,cbs-news,cnn,google-news,hacker-news,medical-news-today,msnbc,national-geographic,national-review,nbc-news,new-scientist,newsweek,new-york-magazine,politico,polygon,recode,techradar,the-hill,the-next-web,the-verge,the-wall-street-journal,the-washington-post,time,usa-today,wired\&pageSize\=10
curl http://192.168.1.32:9275/generateHourlyNewsSummary
