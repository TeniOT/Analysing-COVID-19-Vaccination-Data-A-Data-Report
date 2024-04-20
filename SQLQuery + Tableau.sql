/* Queries used for Tableau Project */



-- 1. 

--- Finding Global Total numbers of new_cases and new_deaths (using SUM and NOT NULL)

SELECT SUM(cast(new_cases as int)) as Total_new_cases, SUM(cast(new_deaths as int)) as Total_new_deaths, SUM(CONVERT(float, new_deaths)/NULLIF(CONVERT(float, new_cases),0))*100 as NewCaseandDeathPercentage
FROM PortfolioProject..CovidDeaths
where continent is not null
order by 1,2



-- 2. Finding Global Total numbers of deaths

select continent,
	CASE continent WHEN '' THEN 'Restoftheworld'
	ELSE continent END as Continent
	,sum (cast(total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Group by continent
order by TotalDeathCount desc




-- 3. Looking at countries with Highest test rate per population density

select location, population_density, max (total_tests) as HighestTestCount,
	Max (CONVERT(float, total_tests)/NULLIF(CONVERT(float, population_density),0))*100 as PercentageTestPopulation
From PortfolioProject..CovidVaccinations
Group by location, population_density
order by PercentageTestPopulation desc




-- 4. Looking at countries with Highest vaccination rate per population density per date

select location, population_density, date, max (total_vaccinations) as HighestVaccinationCount,
	Max (CONVERT(float, total_vaccinations)/NULLIF(CONVERT(float, population_density),0))*100 as PercentagePopulationVaccinated
From PortfolioProject..CovidVaccinations
Group by location, population_density, date
order by PercentagePopulationVaccinated desc