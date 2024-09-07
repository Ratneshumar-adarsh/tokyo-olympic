-- count the no of athelets for each country
select Country ,count(*) as cnt from athelets GROUP by Country ORDER by cnt DESC

-- count the total medal won by each country
select TeamCountry,sum(Gold) as total_gold,sum(Silver) as total_silver,sum(Bronze) as total_bronze from medals GROUP by TeamCountry order by total_gold DESC,total_silver DESC,total_bronze DESC

-- calculate the avg no of entries by gender for each discipline
select Discipline,AVG(Female) as avg_female,avg(Male) as avg_male from entriesgender GROUP by Discipline