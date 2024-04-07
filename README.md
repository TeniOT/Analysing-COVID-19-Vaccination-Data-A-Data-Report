# COVID Data Analysis

### Project Overview

This is a data analysis project aimed to provide insights into the global cases, tests and vaccination per continent in the year 2020 and 2021. 
By analysing various aspects of the COVID cases, tests and vaccinations data, we seek to identify trends and gain a better visualisation of cases.


![Tableau Viz - Covid project](https://github.com/TeniOT/SQLProject/assets/164643376/2102729a-8878-4bf6-82ca-a2c8c73e807a)


### Data Sources
Covid Data: Primary dataset from [Our World in Data](https://ourworldindata.org/covid-deaths) and [AlextheAnalyst](https://www.youtube.com/watch?v=qfyynHBFOsM&list=PLUaB-1hjhk8H48Pj32z4GZgGWyylqv85f&index=1)

### Tools

- Excel for Data cleaning
- SQL Server Managament Studio (SSMS) for Data Exploration and Analysis
```sql
SELECT location, population_density, MAX (total_tests) as HighestTestCount,
	MAX (CONVERT(float, total_tests)/NULLIF(CONVERT(float, population_density),0))*100 as PercentageTestPop
From PortfolioProject..CovidVaccinations
Group by location, population_density
Order by PercentageTestPop desc;
```
- Tableau for Data Visualisation and Forecasting trends


### References
1. Microsoft 365 online for Excel
2. [Microsoft SQL SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
3. [Tableau Public](https://public.tableau.com/app/discover)
4. [AlextheAnalyst](https://www.youtube.com/watch?v=qfyynHBFOsM&list=PLUaB-1hjhk8H48Pj32z4GZgGWyylqv85f&index=1)
5. [Our World in Data](https://ourworldindata.org/covid-deaths)
