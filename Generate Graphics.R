library(ggplot2)
library(ggthemes)

load("~/statistics.Rda")
load("~/poll_avg_nat.Rda")
load("~/poll_avg_state.Rda")
results <- read.csv("~/results.csv", header = TRUE)

dev.off()

#Plot Percent Sentiment data
ggplot(data = statistics, 
       aes(x = as.Date(Date, "%m/%d/%Y"), 
           y = Percent_Sentiment, 
           group = Candidate, 
           color = Candidate)) +
  
        geom_line() +
        theme_minimal() +
        theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
        labs( x = "Date", y = "Percent", title ="Percent of Tweets at Candidates")

#Plot Average Sentiment data
ggplot(data = statistics, 
       aes(x = as.Date(Date, "%m/%d/%Y"), 
           y = Average_Sentiment, 
           group = Candidate, 
           color = Candidate)) +
  
  geom_line() +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs( x = "Date", y = "Sentiment", title ="Average Sentiment")

#Plot FiveThirtyEight national polling average
ggplot(data = poll_avg_nat, 
       aes(x = as.Date(modeldate, "%m/%d/%Y"), 
           y = pct_estimate, 
           group = candidate_name, 
           color = candidate_name)) +
  
  geom_line() +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs( x = "Date", y = "Percent", title ="National Polling Average")

#Plot results
ggplot(data = results, 
       aes(x = as.Date(Date, "%m/%d/%Y"), 
           y = Vote, 
           group = Candidate, 
           color = Candidate)) +
  
  geom_line() +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs( x = "Date", y = "Percent", title ="Primary Results")
