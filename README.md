#  <img src=https://user-images.githubusercontent.com/55955478/235878802-1c423764-f355-47b0-b926-f9380334defd.png height=48 width=48> LINKEDIN JOBS ANALYSIS
<img src=https://user-images.githubusercontent.com/55955478/235868102-52317ba3-5e46-44cd-bc4c-7603f059b8af.png height=300 width=1200>
<br> 
This repository presents an end-to-end analysis of LinkedIn's professional networking platform's Jobs section. The project aims to extract over 500 job details from LinkedIn's website using the Python library, Selenium, and organize the information into specific formats by creating three tables. Additionally, the project involved data cleaning and exploratory data analysis using Pandas and Numpy libraries. MySQL and MS-Excel were utilized to derive insights from the dataset. Power BI was used to visualize the results. Finally, a web page was created to present relevant job information based on the skills listed in the dataset. The page was hosted on the cloud for wider access.
<br>

## <img src=https://user-images.githubusercontent.com/106439762/181935629-b3c47bd3-77fb-4431-a11c-ff8ba0942b63.gif height=50 width=50 >  User's Manual

|Files | Description |
|-----|--------|
| Data-Cleaning | This folder contains files and scripts specifically dedicated to the process of cleaning raw data |
| Data-Scrapping | This folder contains files and scripts designed to extract data from Linekdin's Jobs Section |
| Data-Visualization | This folder contains files and scripts that focus on creating visual representations of data in PowerBI |
| Dataset |  The dataset folder serves as a central location for storing and managing the data used in the project |
| Exploratory Data Analysis | This folder contains files and scripts dedicated to exploring the patterns present in a given dataset |
| Web-Page | This folder contains files and resources related to the development of a web page or website |
| README.md | This is a readme file of this repositary |

<br>

## <img src=https://user-images.githubusercontent.com/106439762/181937125-2a4b22a3-f8a9-4226-bbd3-df972f9dbbc4.gif height=48 width=48> Tools & Technology Used:
![image](https://user-images.githubusercontent.com/55955478/235897588-756e9ed4-33b3-45f6-83c8-4f68988fe8ba.png)


<br>

## <img src=https://user-images.githubusercontent.com/106439762/178428775-03d67679-9aa4-4b08-91e9-6eb6ed8faf66.gif height=48 width=48> Methodology:

1. Implemented web scraping on the LinkedIn jobs section using the Python library Selenium. Leveraged its capabilities to extract and retrieve the following attributes from the job listings:

	| Attribute | Feature's Meaning |
	|-----------|-----------|
	|`location` | The location of the job |
	|`designation`| The designation of the job |
	|`name`| Name of the company |
	|`industry` | Industry in which the company operates |
	|`employees_count`| Count of employees |
	|`linkedin_followers` | Number of followers on linkedin |
	|`involvement` | the nature of involvement in the job, for instance: Full-time, part-time |
	|`level` | The seniority level like Mid-Senior level |
	|`total_applicants` | total number of applicants |
	|`Skills` | Skills required for the job |

  2. Utilized Pandas to perform data cleaning and exploratory data analysis (EDA), and seamlessly imported the CSV files into MySQL for comprehensive analysis and further insights extraction.

3. Skillfully employed various SQL clauses such as GROUP BY, ORDER BY, HAVING, and more to manipulate the data, enabling in-depth analysis and extraction of valuable insights.

4. Demonstrated proficiency by developing a dynamic web page showcasing diverse job listings categorized based on distinct skill sets, enhancing accessibility and user experience.
  
  	<img src=https://github.com/singhrahul7874/LinkedinJobAnalysis/assets/55955478/277630c7-676c-4da4-8c32-e426655b9a67 height=300 width=700 >

<br>
  
## <img src=https://user-images.githubusercontent.com/106439762/178803205-47a08ce7-2187-4f96-b301-a2b68690619a.gif height=48 width=48> Results/Insights:

1. The visual provides an overview of job opportunities that specifically require a particular skill set. It showcases the correlation between specific skills and the corresponding job positions available in the market. The visual aims to highlight the demand for expertise in certain areas and serves as a valuable resource for individuals seeking employment opportunities aligned with their skill sets.

	`plt.figure(figsize=(20,10),dpi=100)`
	`chart = sns.barplot(x=skill_df["Skill"],y=skill_df["Number of jobs requiring the skill"],palette="icefire")`
	`plt.title("Number of jobs that require a particular skill",size=25)`
	`plt.ylabel("Number of jobs",size=22)`
	`plt.xlabel("Skill",size=22)`
	`plt.xticks(fontsize=18,rotation=90)`
	`plt.yticks(fontsize=18)`
	`chart.bar_label(chart.containers[0],size=18)`

<p align="center"><a><img src=https://user-images.githubusercontent.com/55955478/235893509-09e24fc5-ddde-424b-b7bc-ad6c606b856c.png height=400 width=800></a></p>
------------------------------------------------------------------------------------------------------------------------------------

2. The visual displays the distribution of job availability across different classes, providing insights into the number of job opportunities within each category. It offers a clear understanding of the relative abundance or scarcity of jobs in various classes, aiding individuals in identifying areas with higher or lower job prospects.

	`plt.figure(figsize=(20,10),dpi=100)`
	`ax = sns.countplot(df["Class"],palette="viridis")`
	`plt.title("Job Openings by Class",size=25)`
	`plt.ylabel("Number of job openings",size=20)`
	`plt.xlabel("Class",size=20)`
	`plt.xticks(fontsize=20)`
	`plt.yticks(fontsize=20)`
	`ax.bar_label(ax.containers[0],size=20)`

<p align="center"><a><img src=https://user-images.githubusercontent.com/55955478/235894505-1d09f952-dfc7-4625-a6c0-fb58e79ff671.png height=400 width=800></a></p>
------------------------------------------------------------------------------------------------------------------------------------

3. This visual highlights job openings categorized based on their involvement nature. It provides insights into the levels of engagement and responsibility required for various positions, helping individuals identify roles that align with their desired involvement level.

	`plt.figure(figsize=(13,6), dpi=200)`
	`chart = sns.countplot(df["Involvement"],palette='ocean_r')`
	`plt.title("Job Openings for different involvement natures",size=25)`
	`plt.ylabel("Number of job openings",size=20)`
	`plt.xlabel("Involvement nature",size=20)`
	`chart.bar_label(chart.containers[0],size=13)`

<p align="center"><a><img src=https://github.com/singhrahul7874/LinkedinJobAnalysis/assets/55955478/4af95f62-6e4d-47e4-a51a-8ad22d6abe51 height=400 width=800></a></p>


<br>

## <img src=https://cdn1.vectorstock.com/i/1000x1000/45/70/dashboard-icon-vector-22894570.jpg height=50 width=50> 

An interactive Power BI dashboard has been developed to consolidate data from multiple sources. It showcases visually engaging charts, graphs, and tables, enabling users to explore key metrics and extract valuable insights. The dashboard enhances data-driven decision-making and facilitates effective communication with stakeholders.
  
![image](https://user-images.githubusercontent.com/55955478/235902078-3608a456-0278-4b24-88b1-125cf11be3f2.png)
  
<br>
  
## <img src=https://user-images.githubusercontent.com/108053296/185756908-fbb62168-d923-48f2-992f-b8e2fde848fe.gif height=50 width=50> Conclusions:
  
  1. Most jobs are being posted by small-size Companies but applicants are apprently applying in Large-size Companies.
  2. Most applicants are applying in Chennai based companies, but more jobs are there in Mumbai and Bangalore based companies
  3. Significantly higher number of applicants in large and small size companies as compared to medium size companies
  4. Top three states with maximum job openings are Tamil Nadu, Karnataka and Maharastra.
  5. Digital marketing has the most opportunities
  6. About half of the total openings are in IT industry
  7. AI is most required skills.
<br>

## Check out live Demo of the Project: [Linkedin_Jobs_analysis](https://symphonious-chebakia-974445.netlify.app/index.html)
  
