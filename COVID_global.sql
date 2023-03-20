SELECT * FROM covid_global
limit 10;

-- top 5 countries with most number of covid cases
select ï»¿Country, WHO_Region, Total_cases from covid_global
where WHO_Region is not null
order by Total_cases desc
limit 5;
-- USA, China, India, France, Germany

-- top 5 countries with most number of covid cases per 100000 people
select ï»¿Country, WHO_Region, Total_cases, Total_cases_per_100000_population from covid_global
where WHO_Region is not null
order by Total_cases_per_100000_population desc
limit 5;
-- Cyprus, Faroe Islands, San Marino, Austria, Brunei Darussalam

-- top 5 countries with most number of deaths
select ï»¿Country, WHO_Region, Total_Death from covid_global
where WHO_Region is not null
order by Total_death desc
Limit 5;
-- USA, Brazil, India, Russian Federation, Mexico

-- USA and India are the countries with most number of cases and deaths

-- top 5 regions having most number of COVID cases
select WHO_Region, sum(Total_cases) as Cumulative_sum from covid_global
where WHO_Region is not null
group by WHO_Region 
order by Cumulative_sum desc
Limit 5;
-- Europe, Western Pacific, Americas, South-East Asia, Eastern Mediterranean

--  top 5 regions having most number of COVID deaths
select WHO_Region, sum(Total_death) as Cumulative_deaths from covid_global
where WHO_Region is not null
Group by WHO_Region
order by Cumulative_deaths desc
limit 5;
-- America, Europe, South-East Asiea, Western Pacific, Eastern Mediterranean

-- Eastern Mediterranean has least number of covid cases and deaths

-- top 5 countries with highest death ratio
select ï»¿Country, WHO_Region, (((Total_death) / (Total_cases))*100) as Death_ratio from covid_global
where WHO_Region is not null and Total_death >0  and Total_cases>0
order by Death_ratio desc
limit 5;
-- Yemen, Sudan, Syrian Arab Republic, Somalia, Peru

-- Countries which had 0 cases and 0 deaths
select ï»¿Country, WHO_Region, Total_cases, Total_death from covid_global
where WHO_Region is not null and Total_cases=0 and Total_death=0;
-- 2 countries, Democratic People's Republic Of Korea and Turkmenistan

-- continents with the highest death count per population
select ï»¿Country, WHO_Region, Total_death_per_100000_population from covid_global
where WHO_Region is not null
order by Total_death_per_100000_population desc
limit 5;
-- Peru, Bulgaria, Hungary, Bosnia and Herzegovina and North Macedonia

-- countries with hight cases per population
select ï»¿Country, WHO_Region, Total_cases_per_100000_population from covid_global
where WHO_Region is not null
order by Total_cases_per_100000_population desc
limit 5;
-- Cyprus, Faroes Islands, San Marino, Austria, Brunei Darussalam
  
