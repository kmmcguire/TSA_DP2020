regtable <- read.csv("~/DScourseS20/TwitterProject/ProcessedTweets/regtable.csv", header = TRUE)
regmatrix <- regtable[,c(2,4,5,6,7,8,9,10,11)]
regmatrix.cor = cor(regmatrix)

linearMod <- lm(Vote ~ Total_Absolute_Sentiment + Percent_Sentiment + Total_Sentiment + Count_Tweets + Percent_Tweets + Average_Sentiment + Average_Absolute_Sentiment, data=regtable)
summary(linearMod)

linearMod2 <- lm(Vote ~ Average_Sentiment + Percent_Tweets, data=regtable)
summary(linearMod2)

linearMod3 <- lm(Vote ~ Percent_Tweets, data=regtable)
summary(linearMod3)

linearModPoll <- lm(Vote ~ Polling, data=regtable)
summary(linearModPoll)


