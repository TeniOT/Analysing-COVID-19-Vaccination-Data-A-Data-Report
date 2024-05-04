# Analysing COVID-19 Vaccination Data: A Data Report

### Project Overview

The COVID-19 pandemic has prompted a global vaccination effort. In this data analysis report, we explore vaccination trends using a dataset containing COVID-19 vaccination records. The project aims to provide insights into the global cases, tests and vaccination per continent in the year 2020 and 2021. 
By analysing various aspects of the COVID cases, tests and vaccination data, we seek to identify trends and gain a better visualisation of worldwide dataset to make future global health projection.


![Tableau Viz - Covid project](https://github.com/TeniOT/SQLProject/assets/164643376/2102729a-8878-4bf6-82ca-a2c8c73e807a)


### Data Sources
Covid Data: Primary dataset from [Our World in Data](https://ourworldindata.org/covid-deaths) and [AlextheAnalyst](https://www.youtube.com/watch?v=qfyynHBFOsM&list=PLUaB-1hjhk8H48Pj32z4GZgGWyylqv85f&index=1)


### Tools

- Excel for Data cleaning to address common issues such as missing values, outliers, and inconsistencies.
	- For example: Remove duplicate records, Impute missing values (if any), and Validate data integrity (e.g., check if total doses align with population size).
- SQL Server Management Studio (SSMS) for Data Exploration and Analysis
```sql
SELECT location, population_density, MAX (total_tests) as HighestTestCount,
	MAX (CONVERT(float, total_tests)/NULLIF(CONVERT(float, population_density),0))*100 as PercentageTestPop
From PortfolioProject..CovidVaccinations
Group by location, population_density
Order by PercentageTestPop desc;
```
In this query, retrieve vaccination data per population. It represents the cumulative doses administered in each country.
- Tableau for Data Visualisation and Forecasting trends


### Exploratory Data Analysis (EDA)
1. Total number of new cases vs new deaths:
   - To find the correlation between the number of deaths and COVID-19 cases.

2. Total number of tests per country
   - To visualise the country that was more active in testing for new cases.
   - Highlight regions with high and low test rates.

3. Total Death per Continent
   - To analyse the number of death cases by continent.
   - Compare COVID-19 death cases.

4. Vaccination Trends
   - Visualise daily vaccination rates over time using line charts.
   - Identify spikes, plateaus, or seasonal patterns.
   - Map vaccination coverage across the year.



#### Key Findings
I. Total number of new cases vs new death
   - There were more new cases than death rates

II. Total number of test per country
   - Russia had the highest test country
   - Discrepancies exist between developed and developing nations.
   - Limitation: this could be due to differences in population rate per GDP

III. Total Deaths per Continent
   - Europe had the highest Death Count followed by North America
   - This could be due to equity in vaccine distribution.

IV. Vaccination Rates:
- Some countries achieved rapid vaccination coverage, while others lag.
- The general trend forecasts that the vaccination rate is likely to drop in the coming years.
- Factors like government policies, supply availability, and public trust influence rates as further investigation of COVID-19 vaccination efficacy and side effects are being monitored.


#### Conclusion
Understanding COVID-19 vaccination data is essential for informed decision-making. As vaccination campaigns continue, monitoring trends and addressing disparities will be critical. In addition, further research is needed to assess the impact of booster doses.


#### References
1. Microsoft 365 online for Excel
2. [Microsoft SQL SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
3. [Tableau Public](https://public.tableau.com/app/discover)
4. [AlextheAnalyst](https://www.youtube.com/watch?v=qfyynHBFOsM&list=PLUaB-1hjhk8H48Pj32z4GZgGWyylqv85f&index=1)
5. [Our World in Data](https://ourworldindata.org/covid-deaths)
