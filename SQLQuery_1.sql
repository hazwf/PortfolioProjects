select * from PortfolioProject..CovidDeaths
where continent is not null
order by 3,4

select * from PortfolioProject..CovidVaccinations
order by 3,4

ALTER TABLE PortfolioProject..CovidDeaths
ALTER COLUMN total_deaths int

ALTER TABLE PortfolioProject..CovidDeaths
ALTER COLUMN total_cases int

 select location, date, total_cases, new_cases, total_deaths, population
 from PortfolioProject..CovidDeaths
 order by 1,2

--looking at total cases vs total deaths
-- shows likelihood of dying if you contract covid in your country
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from PortfolioProject..CovidDeaths
where location like '%singapore%'
order by 1,2

--looking at total cases vs population
--shows what % of population got covid
select location, date, population, total_cases, (total_cases/population)*100 as PercentOfPopulationInfected
from PortfolioProject..CovidDeaths
where location like '%singapore%'
order by 1,2

--look at countries with highest infection rate compared to population
select location, population, max(total_cases) as HighestInfectionCount, max((total_cases/population))*100 
as PercentOfPopulationInfected
from PortfolioProject..CovidDeaths
group by location, population
order by PercentOfPopulationInfected desc

--showing countries with the highest death count per population
select location, max(total_deaths) as TotalDeathCount
from PortfolioProject..CovidDeaths
where continent is not null
group by location
order by TotalDeathCount desc

--lets break things down by continent
--showing continents with the highest death count
select continent, max(cast(total_deaths as int)) as TotalDeathCount
from PortfolioProject..CovidDeaths
where continent is not null
group by continent
order by TotalDeathCount desc

--global numbers
select sum(cast(total_cases as int)) as TotalCases, sum(cast(total_deaths as int)) as TotalDeaths, 
nullif(sum(cast(total_deaths as int)),0)/nullif(sum(cast(total_cases as int)),0)*100 as DeathPercentage
from PortfolioProject..CovidDeaths
where continent is not null
order by 1,2

--looking at total population vs vaccinations

--use CTE
with PopvsVac (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
as
(select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
sum(convert(int, vac.new_vaccinations)) over (partition by dea.location order by dea.location,
dea.date) as RollingPeopleVaccinated
--(RollingPeopleVaccinated/population)*100
from PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null)
--order by 2,3

select *, (RollingPeopleVaccinated/Population)*100
from PopvsVac

--temp table
drop table if exists #PercentPopulationVaccinated
create table #PercentopulationVaccinated
(
continent nvarchar(255)
location nvarchar(255),
date datetime, 
population numeric,
new_vaccinations numeric,
RollingPeopleVaccinated numeric)

--creating view to store data for later visualizations
create view PercentPopulationVaccinated as
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
sum(convert(int, vac.new_vaccinations)) over (partition by dea.location order by dea.location,
dea.date) as RollingPeopleVaccinated
--(RollingPeopleVaccinated/population)*100
from PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null

select * from PercentPopulationVaccinated