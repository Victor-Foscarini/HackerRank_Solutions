select COUNTRY.CONTINENT,floor(avg(CITY.POPULATION)) from CITY inner join COUNTRY on COUNTRYCODE=CODE group by COUNTRY.CONTINENT;
