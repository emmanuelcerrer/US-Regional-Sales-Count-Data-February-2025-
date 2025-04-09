CREATE DATABASE ZillowNowcastFeb2025;
GO
USE ZillowNowcastFeb2025;

CREATE TABLE HomeSales (
    RegionID INT,
    RegionName VARCHAR(100),
    Sales_Count INT
);

INSERT INTO HomeSales (RegionID, RegionName, Sales_Count)
VALUES
(394913, 'New York', 8285),
(394463, 'Chicago', 5945),
(394347, 'Atlanta', 5859),
(394856, 'Miami', 5628),
(394976, 'Phoenix', 5353),
(753899, 'Los Angeles', 5167),
(394514, 'Dallas', 5069),
(395209, 'Washington', 4285),
(394974, 'Philadelphia', 4264),
(394692, 'Houston', 4206),
(394532, 'Detroit', 3955),
(395148, 'Tampa', 3741),
(395025, 'Riverside', 3075),
(395078, 'Seattle', 2767),
(394530, 'Denver', 2597),
(394458, 'Charlotte', 2543),
(395121, 'St. Louis', 2420),
(394775, 'Las Vegas', 2348),
(394865, 'Minneapolis', 2303),
(394358, 'Baltimore', 2227),
(394943, 'Orlando', 2193),
(395057, 'San Francisco', 2188),
(394404, 'Boston', 2045),
(395056, 'San Diego', 1826),
(395194, 'Virginia Beach', 1784),
(394902, 'Nashville', 1781),
(394982, 'Pittsburgh', 1762),
(394705, 'Indianapolis', 1753),
(394998, 'Portland', 1714),
(394466, 'Cincinnati', 1713),
(394714, 'Jacksonville', 1614),
(394735, 'Kansas City', 1572),
(395045, 'Sacramento', 1541),
(394475, 'Cleveland', 1472),
(394492, 'Columbus', 1466),
(395055, 'San Antonio', 1464),
(394440, 'Cape Coral', 1464),
(394935, 'Oklahoma City', 1446),
(394355, 'Austin', 1409),
(753906, 'North Port', 1243),
(394849, 'Memphis', 1225),
(395012, 'Raleigh', 1177),
(394388, 'Birmingham', 1086),
(395167, 'Tucson', 1082),
(395022, 'Richmond', 1041),
(394807, 'Louisville', 1033),
(394862, 'Milwaukee', 996),
(395053, 'Salt Lake City', 965),
(394653, 'Greenville', 939),
(394753, 'Knoxville', 908),
(394457, 'Charleston', 907),
(395169, 'Tulsa', 890),
(394528, 'Deltona', 864),
(394910, 'New Orleans', 837),
(394640, 'Grand Rapids', 828),
(395059, 'San Jose', 813),
(395005, 'Providence', 801),
(394486, 'Columbia', 766),
(394484, 'Colorado Springs', 766),
(394318, 'Allentown', 721),
(394938, 'Omaha', 686),
(394669, 'Hartford', 671),
(394766, 'Lakeland', 653),
(394312, 'Albuquerque', 648),
(395235, 'Winston', 624),
(394399, 'Boise City', 608),
(394357, 'Bakersfield', 600),
(394367, 'Baton Rouge', 594),
(394648, 'Greensboro', 592),
(394798, 'Little Rock', 589),
(394931, 'Ogden', 567),
(394304, 'Akron', 548),
(394425, 'Buffalo', 536),
(394531, 'Des Moines', 532),
(394549, 'Durham', 523),
(395238, 'Worcester', 507),
(394908, 'New Haven', 500),
(753924, 'Urban Honolulu', 493),
(395006, 'Provo', 492),
(394415, 'Bridgeport', 482),
(394619, 'Fresno', 474),
(394561, 'El Paso', 472),
(395031, 'Rochester', 471),
(394308, 'Albany', 447),
(395160, 'Toledo', 419),
(394952, 'Oxnard', 414),
(395224, 'Wichita', 402),
(395134, 'Stockton', 375),
(394816, 'Madison', 365),
(395115, 'Springfield', 346),
(394602, 'Fort Collins', 337),
(395143, 'Syracuse', 291),
(394843, 'McAllen', 261);

SELECT * FROM HomeSales;

SELECT RegionName, SUM(Sales_Count) AS TotalSales
FROM HomeSales
GROUP BY RegionName;

SELECT AVG(Sales_Count) AS AverageSales
FROM HomeSales;

SELECT TOP 1 RegionName, Sales_Count
FROM HomeSales
ORDER BY Sales_Count DESC;

SELECT TOP 1 RegionName, Sales_Count
FROM HomeSales
ORDER BY Sales_Count ASC;

SELECT RegionName, Sales_Count
FROM HomeSales
WHERE Sales_Count > 5000;

SELECT RegionName, Sales_Count, RANK() OVER (ORDER BY Sales_Count DESC) AS SalesRank
FROM HomeSales;

SELECT RegionName, SUM(Sales_Count) AS TotalSales
FROM HomeSales
GROUP BY RegionName
HAVING SUM(Sales_Count) > 5000;