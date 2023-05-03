#  <img src=https://user-images.githubusercontent.com/55955478/235878802-1c423764-f355-47b0-b926-f9380334defd.png height=48 width=48> LINKEDIN JOBS ANALYSIS
<img src=https://user-images.githubusercontent.com/55955478/235868102-52317ba3-5e46-44cd-bc4c-7603f059b8af.png height=300 width=1200>
<br> 
This repository presents an end-to-end analysis of LinkedIn's professional networking platform's Jobs section. The project aims to extract over 500 job details from LinkedIn's website using the Python library, Selenium, and organize the information into specific formats by creating three tables. Additionally, the project involved data cleaning and exploratory data analysis using Pandas and Numpy libraries. MySQL and MS-Excel were utilized to derive insights from the dataset. Power BI was used to visualize the results. Finally, a web page was created to present relevant job information based on the skills listed in the dataset. The page was hosted on the cloud for wider access.
<br>

## <img src=https://user-images.githubusercontent.com/106439762/181935629-b3c47bd3-77fb-4431-a11c-ff8ba0942b63.gif height=50 width=50 >  User's Manual

|Files | Description |
|-----|--------|
|Data_cleaning_ml (darr).ipynb |This file all the data cleaning steps involved in our project |
|EDA_REPORT (JOB_ANALYTICS_LINKEDIN).ipynb |This file contains Exploratory Data Analysis report |
|Final_scrapper_ML (darr).ipynb |This is our Data Scrapping file used to scrape linkedin jobs section 
|ML_final_data(Darr).csv| This file contains our final sanitzed dataset |
|csvjson.json|This file is just a json of the above csv |
|dashboard.html|This page contains code for our dashboard button |
|index.html |This file contains our main web-page's code |
|logic.js |This file contains logic use to show job details based on different skills |
|searchPage.html| This file contain code for our search bar(to search jobs based on skills) |
|linkedin_mysql_script.sql |This script contains insights derived in mysql-workbench |
|mlrahul...lll.pbix |This is our data-visualization file containg Dashboard in PowerBi |

<br>

## <img src=https://user-images.githubusercontent.com/106439762/181937125-2a4b22a3-f8a9-4226-bbd3-df972f9dbbc4.gif height=48 width=48> Tools & Technology Used:
![image](https://user-images.githubusercontent.com/55955478/235897588-756e9ed4-33b3-45f6-83c8-4f68988fe8ba.png)


<br>

## <img src=https://user-images.githubusercontent.com/106439762/178428775-03d67679-9aa4-4b08-91e9-6eb6ed8faf66.gif height=48 width=48> Methodology:

  1. Scraped Linkedin jobs section using python library Selenium and extracted following attributes.
  <div id="image-table">
    <table>
	    <tr>
    	    <td style="padding:10px">
        	    <img src=https://user-images.githubusercontent.com/55955478/235886598-f8657895-553a-4fd4-b40b-2dd425ee8314.png height=200 width=500>
      	    </td>
            <td style="padding:10px">
            	 <img src=https://user-images.githubusercontent.com/55955478/235887725-1aa07ea7-0d62-4c90-bcb2-3f084ee69abb.png height=200 width=500>
        </tr>
      <tr> 
        <td style="padding:10px">
          <img src= https://user-images.githubusercontent.com/55955478/235890070-6de42529-a5c0-4770-84aa-3703175e9530.png height=200 width=500>
        </td>
      </tr>
    </table>

 2. Did the data cleaning and EDA part with the help of Pandas and imported the CSVs into MySQL for furthur analysis.

3. Took help of different SQL clauses like group by, order by, having etc in order to manupalate the data and get the insights out.

4. Created a web-page which shows different jobs on the basis of different skills. 
  
  ![image](https://user-images.githubusercontent.com/55955478/235896881-e20faec3-33f1-4e5d-86d4-fbaeda90d573.png)



<br>
  
## <img src=https://user-images.githubusercontent.com/106439762/178803205-47a08ce7-2187-4f96-b301-a2b68690619a.gif height=48 width=48> Results/Insights:
  
<p align="center"><a><img src=https://user-images.githubusercontent.com/55955478/235893509-09e24fc5-ddde-424b-b7bc-ad6c606b856c.png height=400 width=1000></a></p>
<p align="center"><a><img src=https://user-images.githubusercontent.com/55955478/235894505-1d09f952-dfc7-4625-a6c0-fb58e79ff671.png height=400 width=1000></a></p>
<p align="center"><a><img src=https://user-images.githubusercontent.com/55955478/235895274-bde759d5-7990-47af-838f-dc1fd8612974.png height=400 width=1000></a></p>
 
<br>
  
## <img src=https://cdn1.vectorstock.com/i/1000x1000/45/70/dashboard-icon-vector-22894570.jpg height=50 width=50> :
  
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
  
