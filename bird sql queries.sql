SELECT * FROM bird.bird_df;
use bird;

#Changed Data Types
DESCRIBE bird_df;
ALTER TABLE bird_df MODIFY Initial_Three_Min_Cnt INT;

ALTER TABLE bird_df MODIFY Visit INT;

#SQL ANALYSIS QUERIES
#Total Observations
select count(*) as total_observations from bird_df;

#Total Unique Bird Species
select count(distinct Scientific_Name) as unique_species from bird_df;

#Observations by Habitat
select Location_Type,count(*) as observation_count from bird_df
group by Location_Type;

#Species Diversity by Park
select Admin_Unit_Code, count(distinct Scientific_Name) as species_count from bird_df
group by Admin_Unit_Code 
order by species_count desc;

#Weather Impact (Temperature)
select round(Temperature) as temp_range,count(*) as observations from bird_df
group by temp_range
order by temp_range;

#Distance Analysis
select Distance,count(*) as observations from bird_df
group by Distance
order by observations desc;

#Conservation Watchlist Species
select PIF_Watchlist_Status, count(*) as species_count from bird_df
group by PIF_Watchlist_Status;

#Rank Top Bird Species by Observation Count,Window Function → RANK()
with species_counts as (select Common_Name,count(*) as observation_count from  bird_df group by Common_Name)
select Common_Name,observation_count,rank() over (order by observation_count desc) as species_rank
from species_counts limit 10;

#Distinct Species Diversity per Habitat,CTE + Aggregation
with habitat_species as (select Location_Type,count(distinct Scientific_Name) as species_count from bird_df group by Location_Type)
select * from habitat_species order by species_count desc;

#Park with Highest Bird Observations,Subquery
select Admin_Unit_Code, observation_count
from(select Admin_Unit_Code,count(*) as observation_count from bird_df
group by Admin_Unit_Code) as park_counts
order by observation_count desc limit 1;

#Running Total of Bird Observations by Year,Window Function → SUM() OVER
select year,count(*) as yearly_observations,sum(count(*))over(order by Year) as cumulative_observations
from bird_df
group by Year
order by Year;
use bird;
#Top Species per Habitat,Window Function → ROW_NUMBER()
with species_rank as (select Location_Type,Common_Name,count(*) as observations,
row_number() over(partition by Location_Type order by count(*) desc) as rank_num
from bird_df
group by Location_Type,Common_Name
)
select Location_Type,Common_Name,observations from species_rank where rank_num=1;

#Compare Average Temperature for Bird Sightings,Subquery
select Location_Type,avg(Temperature) as avg_temperature from bird_df
where Temperature is not null
group by Location_Type;

#Observer Contribution Ranking,Window Function → DENSE_RANK()
select Observer,count(*) as observations,
dense_rank() over (order by count(*)desc) as observer_rank from bird_df
group by Observer
order by observations desc;

#Identify Parks with Above-Average Species Diversity,Subquery
select Admin_Unit_Code,count(distinct Scientific_Name) as species_count from bird_df
group by Admin_Unit_Code
having species_count > (select avg(species_total) from (
select count(distinct Scientific_Name) as species_total from bird_df
group by Admin_Unit_Code) as avg_species);
use bird;