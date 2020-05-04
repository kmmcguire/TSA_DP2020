To replicate results, these following scripts included in the main folder will be of use. To run, each only needs to have the date range updated to the desired values. All seven scripts must be run in the correct order for all dates to generate the correct results. I typically ran Get Tweets on a daily basis, but only cleaned the data and ran the others when I wanted to analyze results. Any combination of how the scripts are run is okay, as long as each script is only run with the previous one having been completed in some fashion for that date range.

Get Tweets.R: Downloads Tweets into Raw Tweets folder for given date range.  
Clean Tweets.R: Formats Tweets and calculates sentiment score for given date range.  
Consolidate Senitment.R: Combines Tweets and sentiment into easier to use files.  
Get Polling Average.R: Downloads FiveThirtyEight polling average for requested date range.  
Generate Statistics.R: Creates statistics for the sentiment scores that can be compared and processed.  
Generate Graphics.R: Creates graphics based on the sentiment statistics or polling average. Adjust plot code to create the desired number of charts for any of the variables. Currently creates the graphs used in the final written report.  
Build Regression.R: Creates the regression table used in the written report. The input was for this was further cleaned in Excel, and the input CSV is saved in the Processed Tweets folder. This script should be rewritten in the future to allow for easier automation. Currently, the limited number of primaries examined makes this irrelevant, but if further study is conducted will become essential.  

The following scripts are part of an incomplete update and should not be used yet. Once finished, the results will be the same, but will allow for greater flexibility and automation if further studies build off this one.  
Build Candidates.R  
get tweets 2.R  
clean tweets 2.R  
