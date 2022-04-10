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
2. Consider key stakeholders:

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

The individual data sets are stored within a folder that exists in OneDrive and locally.

● How is the data organized?

The data sets are organized in chronological order from the last twelve months, and are stored within CSV files.

● Are there issues with bias or credibility in this data? Does your data ROCCC?

There appears to be some NA's present within the station columns. However,
this shouldn't pose a huge issue when attempting to address the business task as those specific variables
are not being used for analysis.
The data has been provided from the company itself, and is credible. 

● How are you addressing licensing, privacy, security, and accessibility?

Licensing: This data has been made available to be used for these purposes. Information pertaining to personal information has been excluded.
Privacy: Similar to above, PII has been excluded from this dataset.

Security: The data itself is being housed in an encrypted cloud drive, with a local copy available on the device. 

Accessibility: The case study is being worked on through Visual Studio Code and R Studio, which is actively uploaded to GitHub, acting as a version control system. It could, hypothetically, be accessed and worked on by various parties that are part of the project as well.

● How did you verify the data’s integrity?

Ensuring that the data came from the official source, and that no modifications to the data occurred during the initial
acquisition of it, and during subsequent transformative steps in the process.

● How does it help you answer your question?

● Are there any problems with the data?

The only issues so far are NA's present with in the station column.

Key tasks

1. Download data and store it appropriately. **
2. Identify how it’s organized. **
3. Sort and filter the data. **

Data has been sorted and filtered based on information that appears to be relevant/helpful for the analysis.    

Deliverable:

A description of all data sources used
The data has been acquired from Motivate International Inc. for public use, excluding any PII.
It contains data that is relevant to the business task, such as rider status, length of ride times, etc.

-------
Process
-------
Guiding questions 

● What tools are you choosing and why?

I am using a combination of R Studio and Visual Studio Code with the R extension. The reason I am doing this is to quickly upload the information to a GitHub repository, and for it to act as a version control system. R Studio will also provide visualization tools when it comes to displaying patterns in the data.

● Have you ensured your data’s integrity? 
By comparing the data after it was acquired to the data from the official source, the integrity of the data can be confirmed, as no changes in the size of the files were
observed.

● What steps have you taken to ensure that your data is clean? 

1) Once the data was saved and organized into its designated locations, I started by first looking at the data in the CSV files for each of the past twelve months.
2) In each CSV file, basic cleaning was performed, such as adding a new column with the length of bike trips, and the day of the week for each trip.
3) The data was then imported into R and each of the twelve months of data were combined into one.
4) NA's were checked for by using a small script that summarized the total of NA's found per column. The majority of NA's located existed within columns that were not important for answering the
business question and were subsequently removed.
5) Further analysis indicated that after calculating ride lengths, 145 cells were populated with NAs. This is not a statistically signficant number and therefore the rows were removed.
6) After running an initial analysis on the data with the summarize function, it was determined that there were issues with the ride length values, as some were either extremely long,
or extremely short. These values were skewing the data, and are unreasonable ride length values.
I removed any rows that contained ride lengths exceeding 3 hours, which seemed like a reasonable maximum ride length for casual bike rides, maybe on a weekend.
Values that were less than 1 minute were also excluded.

● How can you verify that your data is clean and ready to analyze? 

By filtering, sorting and manually analyzing the data for discrepancies.
Checking for remaining NA's, and values that are skewing the trends in the data.

● Have you documented your cleaning process so you can review and share those results?

The cleaning process is documented within the readme file, as it will appear first when viewing the repository on the GitHub website.
I can also easily add more information here and push it to the repository, or modify it directly on the website itself.

Key tasks
1. Check the data for errors. **
2. Choose your tools. **
3. Transform the data so you can work with it effectively. **
4. Document the cleaning process. **

Deliverable:

Documentation of any cleaning or manipulation of data

-------
Analyze
-------

Guiding questions 

● How should you organize your data to perform analysis on it?

The data should be organized into a single dataset for easier analysis.
Furthermore, after understanding the information within the datasets, keep the columns
that are relevant to the business task.

● Has your data been properly formatted?

The data, initially, was not ideally formatted, specifically the dates. The rest of the data appeared to be in an
acceptable format for analysis.

● What surprises did you discover in the data?

The first surprise was the existence of NAs, which I did not see during the first
quick analysis of the data.
Second, there were the extreme max and min outliers in the data which had to be removed to ensure
analysis was not being skewed to one extreme or the other.
Third, the column including the data was not in an ideal format for analysis, and therefore had to be 
managed.

● What trends or relationships did you find in the data?

1) It appears that casual riders utilize the service far more on Saturdays and Sundays,
whereas members use the service relatively the same throughout the week. Since members usage of
the service is covered in a subscription, they are more likely to consistently use the service
without incurring extra fees associated with using the bike on a per-use basis.

2) According to the data, members utilize both types of bikes more than casual riders, however,
this is likely due to the fact there are overall more members than casual riders over the course
of the last twelve months. This is not necessarily indicative of one type of rider favoring 
one type of ride over another.

3) By comparing casual and member average ride lengths, it seems casual riders tend to have
longer rides overall, while although there are more member riders in the last twelve months,
they seem to be shorter on average.
This could indicate that casual riders are using the service for more leisure-type rides,
while members are more frequently utilizing it for getting back and forth from work or other
reoccurring obligations.
This is further corroborated by the fact the amount of member riders over the course of a week
appears to similar, whereas casual riders tend to use it more on Saturdays and Sundays.

● How will these insights help answer your business questions?

The aforementioned insights indicate that casual riders tend to use the service more for leisure
rides during the weekend, whereas members are using the service more consistently throughout the
week, likely as a method of transit to and from work.

These insights could be leveraged in a way that emphasizes that casual riders could be using this service during the week as a main form of transit, likely saving money vs using a vehicle or
public transit.

Key tasks
1. Aggregate your data so it’s useful and accessible. **
2. Organize and format your data. **
3. Perform calculations. **
4. Identify trends and relationships. **

Deliverable:

A summary of your analysis

Preliminary analysis indicates that casual riders tend to, on average, have longer ride times than members. Furthermore, casual riders appear to use the service more on weekends, likely for leisure activities and communtes, while members use it more consistently (and more often) during the week. This likely indicates that members are using the service for work more often than casual riders are.

-------
Share
-------

Guiding questions 

● Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?

Yes. The data indicates that casual riders are utilizing the service for more leisure rides, such as on the weekends. Members appear to be using the service more consistently throughout the week, likely for work. 
Members ride activity appears to peak mid-week, around Tuesday and Wednesday, whereas it peaks on Saturday and Sunday for Casual riders.

● What story does your data tell? 

The story that is being told within the data, is that casual riders are using this service during the weekends, likely for one-off, leisure rides. Additionally, casual riders tend to use the bike longer each trip, on average.
Members on the other hand, appear to be using it more during the week, likely as their main form of transportation commuting to and from work. These rides also appear to be shorter in duration, on average, compared to casual riders.

● How do your findings relate to your original question?

The findings relate directly to the original question, which was "How do annual members and casual riders use Cyclistic bikes differently?" by clearly indicating the differences between how casual riders and members are utilizing the service.

● Who is your audience? What is the best way to communicate with them?

The stakeholders are Lily Moreno, the Director of Marketing and the Cyclistic executive team.
Communicating with the Lily, the manager, is far more direct than it is with the Executive team. Likely, updates will be provided through Lily, to them.

In terms of communicating the findings of this analysis, a case study can serve this purpose, detailing the data behind the findings in an easy to digest way, while also providing simple visualizations that emphasize them in a way that can be easier and more quickly understood.

● Can data visualization help you share your findings?

Data visualization in this  circumstance can definitely help share these findings. The type of story this data tells is easily understood through a couple of simple visualizations which indicate the contrast between the different members and how they use the service.

● Is your presentation accessible to your audience?
The findings are effectively communicated through the charts provided, which makes it highly available to the majority of audiences. Additionally, the statistics are provided in
the form of a table.

Key tasks
1. Determine the best way to share your findings. **
2. Create effective data visualizations. **
3. Present your findings. **
4. Ensure your work is accessible. **

Deliverable:

Supporting visualizations and key findings

-------
Act
-------

Guiding questions 
 
● What is your final conclusion based on your analysis?

Based on the business objective, the final conclusion is that on average, casual riders have longer average ride times, and use the service more on weekends, whereas
members use the service more consistently throughout the week, during shorter intervals.

● How could your team and business apply your insights? 

With this information, the team can now take the next step to leverage these findings determine how to sell memberships to casual riders.

● What next steps would you or your stakeholders take based on your findings? 

The insights that have been gained from this data provide a good foundation for the analysis that needs to come next by leveraging this data: how do we
coax casual riders into becoming members? More data is likely required, but this is a good start.

● Is there additional data you could use to expand on your findings?

Having a better way to know if a specific rider has used the service multiple times a day could help determine whether or not
members are using the service for work, as typically you expect someone to use it there and back. The data indicates members are
using the service for shorter durations on average.

Key tasks 

1. Create your portfolio. **
2. Add your case study. **
3. Practice presenting your case study to a friend or family member.

Deliverable 

Your top three recommendations based on your analysis