CREATE TABLE ElectricCars_d (
    Brand VARCHAR(50),
    Model VARCHAR(100),
    AccelSec FLOAT,
    TopSpeed_KmH INT,
    Range_Km INT,
    Efficiency_WhKm INT,
    FastCharge_KmH VARCHAR(20),
    RapidCharge VARCHAR(10),
    PowerTrain VARCHAR(10),
    PlugType VARCHAR(20),
    BodyStyle VARCHAR(30),
    Segment VARCHAR(5),
    Seats INT,
    PriceEuro INT
);

SELECT*FROM ElectricCars_d

---- List the first 10 electric cars.
SELECT * FROM ElectricCars_d LIMIT 10;

----- Count how many cars are there in total.

SELECT COUNT(*) AS TotalCars FROM ElectricCars_d;

------ Find the distinct brands available.

SELECT DISTINCT Brand FROM ElectricCars_d;


------ Find the most expensive car.
SELECT Brand, Model, PriceEuro
FROM ElectricCars_d
ORDER BY PriceEuro DESC
LIMIT 10;

---------------Find the cheapest car.
SELECT Brand, Model, PriceEuro
FROM ElectricCars_d
ORDER BY PriceEuro ASC
LIMIT 10;

----------------- 6. Show top 5 cars with highest range (km).

SELECT Brand, Model, Range_Km
FROM ElectricCars_d
ORDER BY Range_Km DESC
LIMIT 5;


----------------- Which brand has the most models?
SELECT Brand, COUNT(*) AS NumberOfModels
FROM ElectricCars_d
GROUP BY Brand
ORDER BY NumberOfModels DESC
LIMIT 1;

------------- Average price of all electric cars.

SELECT AVG(PriceEuro) AS AveragePrice FROM ElectricCars_d;


------------- List all cars with 7 seats.
SELECT Brand, Model
FROM ElectricCars_d
WHERE Seats = 7;

-----------------  How many cars support Rapid Charge?

SELECT COUNT(*) AS RapidChargeCars
FROM ElectricCars_d
WHERE RapidCharge = 'Yes';

------------------------- Cars sorted by highest Top Speed.

SELECT Brand, Model, TopSpeed_KmH
FROM ElectricCars_d
ORDER BY TopSpeed_KmH DESC;


----------------- List all SUVs available.

SELECT Brand, Model
FROM ElectricCars_d
WHERE BodyStyle = 'SUV';


--------------- Find cars that have Range over 500 km.

SELECT Brand, Model, Range_Km
FROM ElectricCars_d
WHERE Range_Km > 500;


------------ show cars with Efficiency better than 150 Wh/km.

SELECT Brand, Model, Efficiency_WhKm
FROM ElectricCars_d
WHERE Efficiency_WhKm < 150;



------------ Find all AWD (All-Wheel Drive) cars.

SELECT Brand, Model
FROM ElectricCars_d
WHERE PowerTrain = 'AWD';



----------------- Average range by brand.

SELECT Brand, AVG(Range_Km) AS AvgRange
FROM ElectricCars_d
GROUP BY Brand
ORDER BY AvgRange DESC;


------------- Cars priced between 30,000 and 50,000 Euros.

SELECT Brand, Model, PriceEuro
FROM ElectricCars_d
WHERE PriceEuro BETWEEN 30000 AND 50000;



----------------------Number of cars in each segment (B, C, D, etc.).

SELECT Segment, COUNT(*) AS NumberOfCars
FROM ElectricCars_d
GROUP BY Segment;



-------------------- Top 5 cars by fastest acceleration (lowest AccelSec).
SELECT Brand, Model, AccelSec
FROM ElectricCars_d
ORDER BY AccelSec ASC
LIMIT 5;


-------------- Top 15 cars by fastest acceleration (Highest AccelSec).

SELECT Brand, Model, AccelSec
FROM ElectricCars_d
ORDER BY AccelSec DESC
LIMIT 15;