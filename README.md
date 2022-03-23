# Data-Analytics-Cyclistic-Case-Study
---
Ask
---

Guiding questions

● What is the problem you are trying to solve?

How do annual members and casual riders use Cyclistic bikes differently? Furthermore, how can this data be leveraged
to convert casual members into memberships?

● How can your insights drive business decisions?

The insights gained from this analysis will assist in coming up with a strategy
to convert casual riders to members, which will increase overall revenue.

Key tasks

1. Identify the business task

The business task is to determine how to convert casual riders into members,
thus driving business revenue.

2. Consider key stakeholders

Lily Moreno - Moreno is responsible for the development of campaigns
and initiatives to promote the bike-share program.

Cyclistic executive team - Will decide whether to approve the marketing program.

Deliverable 
The business task is to determine how to convert casual riders into members,
thus driving business revenue.

-------
Prepare
-------

Guiding questions

● Where is your data located?

The individual data sets are stored within a folder locally, then imported into
RStudio within a variable.

● How is the data organized?

The data sets are organized in chronological order from the last twelve months.

● Are there issues with bias or credibility in this data? Does your data ROCCC?

here appears to be some NA's present within the station columns. However,
this shouldn't pose a huge issue when attempting to address the business task.

● How are you addressing licensing, privacy, security, and accessibility?

Licensing: This data has been made available to be used for these purposes. Information pertaining to personal information has been excluded.
Privacy: Similar to above, PII has been excluded from this dataset.

Security:

Accessibility: The case study is being worked on through Visual Studio Code and R Studio, which is actively uploaded to GitHub, acting as a version control system. It could, hypothetically, be accessed and worked on by various parties that are part of the project.

● How did you verify the data’s integrity?

● How does it help you answer your question?

● Are there any problems with the data?
The only issues so far are NA's present with in the station column.

Key tasks

1. Download data and store it appropriately. **

2. Identify how it’s organized. **

3. Sort and filter the data. **
Data has been sorted and filtered based on information that appears to be relevant/helpful for the analysis.    

Deliverable 
A description of all data sources used
The data has been acquired from Motivate International Inc. for public use, excluding any PII.
It contains data that is relevant to the business task, such as rider status, length of ride times, etc.

-------
Process
-------
Guiding questions 

● What tools are you choosing and why? 

I am using a combination of R Studio and Visual Studio Code with the R extension. The reason I am doing this is to quickly upload the information to a GitHub repository, and for it to act as a version control system.
R Studio will also provide visualization tools when it comes to displaying the patterns in the data.

● Have you ensured your data’s integrity? 

● What steps have you taken to ensure that your data is clean? 

1) Once the data was saved and organized into its designated locations, I started by first looking at the data in the CSV files for each of the past twelve months.
2) In each CSV file, basic cleaning was performed, such as adding a new column with the length of bike trips, and the day of the week for each trip.
3) The data was then imported into R and each of the twelve months of data were combined into one.
4) NA's were checked for by using a small script that summarized the total of NA's found per column. The majority of NA's located existed within columns that were not important for answering the
business question and were subsequently removed.
5) Further analysis indicated that after calculating ride lengths, 145 cells were populated with NAs. This is not a statistically signficant number and therefore the rows were removed.

● How can you verify that your data is clean and ready to analyze? 

By filtering, sorting and manually analyzing the data for discrepancies. 

● Have you documented your cleaning process so you can review and share those results?

The cleaning process is documented within the readme file, as it will appear first when viewing the repository on the GitHub website.
I can also easily add more information here and push it to the repository, or modify it directly on the website itself.

Key tasks 
1. Check the data for errors. **
2. Choose your tools. **
3. Transform the data so you can work with it effectively. **
4. Document the cleaning process. **

-------------------------------------------------------------------------------

With the objective clear, the next step is to analyze the data set. This will
include viewing it to investigate any obvious issues, such as missing data,
incorrectly formatted data, irrelevant data, etc.

Cleaning of the data, if necessary, needs to be done, such as filtering out NAs,
recording data to the correct data type, etc.

Next will be to identify which variables to include in the updated dataframe
that will allow for the required questions to be answered.
