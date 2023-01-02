
-- Exploring The Dataset
SELECT * 
FROM [EDA-Project-03]..InternetData
---------------------------------------------------------------------------------------

-- Countries that have highest internet plans
SELECT Country, [NO# OF Internet Plans]
FROM [EDA-Project-03]..InternetData
WHERE [NO# OF Internet Plans] >= 50 -- This countries were popular for using Internet
---------------------------------------------------------------------------------------

-- Countries in Continental region
SELECT [Continental region], COUNT(Country) AS TotalCountries 
FROM [EDA-Project-03]..InternetData
GROUP BY [Continental region]
---------------------------------------------------------------------------------------

-- Continents that have highest internet users
SELECT [Continental region], SUM([Internet users]) AS MostUSERS 
FROM [EDA-Project-03]..InternetData
WHERE [Internet users] IS NOT NULL
GROUP BY [Continental region] 
---------------------------------------------------------------------------------------

-- Continents that have the high price of avg 1gb in 2021
SELECT [Continental region], AVG([Avg price of 1GB (Start of 2021)]) AS HighPrice_1GB
FROM [EDA-Project-03]..InternetData
GROUP BY [Continental region]
---------------------------------------------------------------------------------------

-- Continents those have most expensive 1GB 
SELECT [Continental region], AVG([Most expensive 1GB (USD)]) AS Expensive_1GB
FROM [EDA-Project-03]..InternetData
GROUP BY [Continental region]
---------------------------------------------------------------------------------------

-- Continents those have most cheapest 1GB 
SELECT [Continental region], AVG([Cheapest 1GB for 30 days (USD)]) AS Cheapest_1GB
FROM [EDA-Project-03]..InternetData
GROUP BY [Continental region]
---------------------------------------------------------------------------------------

-- Continents which have highest bandwith internet
SELECT [Continental region], AVG([Avg _(Mbit/s)Ookla]) AS HighSpeed_Bandwith
FROM [EDA-Project-03]..InternetData
GROUP BY [Continental region]
---------------------------------------------------------------------------------------






































































































































