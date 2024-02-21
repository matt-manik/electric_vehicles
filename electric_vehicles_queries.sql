
-- Query 1: Average Electric Range of Tesla Models from years of 2016-2021
USE electric_vehicles;
CREATE OR REPLACE VIEW tesla_electric_range_view AS
(SELECT model_name, ROUND(AVG(electric_range)) AS average_electric_range
FROM electric_vehicles.vehicle_models
JOIN vehicle_makes USING (make_id)
WHERE make_id = 3 
GROUP BY model_name
ORDER BY model_name);

-- Query 2: Vehicles registered in each county
USE electric_vehicles;
CREATE OR REPLACE VIEW vehicles_in_each_county_view AS
(SELECT c.county_name, COUNT(vehicle_id) AS vehicles_registered
FROM vehicles
JOIN addresses a USING (address_id)
JOIN counties c USING (county_id)
GROUP BY a.county_id
ORDER BY vehicles_registered);

-- Query 3: Average electric range for models from 2016-2018
USE electric_vehicles;
SELECT ROUND(AVG(t.e_range))AS average_electric_range
FROM
(SELECT model_name, model_year, AVG(electric_range) as e_range
FROM vehicle_models 
WHERE model_year < 2019
GROUP BY model_name, model_year
ORDER BY model_name, model_year) t;

-- Query 4: Displays the model names, model year, electric range for vehicle made after year 2020 and postal code of the owner of those models
USE electric_vehicles;
CREATE OR REPLACE VIEW vehicles_after_2020_view AS
(SELECT v.model_name, v.model_year, v.electric_range, p.postal_code
FROM vehicle_models v
JOIN vehicles vi USING(model_id)
JOIN addresses USING(address_id)
JOIN postal_codes p USING(postal_code_id)
WHERE v.model_year > 2020);


-- Query 5: Counts of vehicles served by each electric utility in each city
USE electric_vehicles;
CREATE OR REPLACE VIEW utility_service_view AS
(SELECT city_name AS city,
electric_utility_name AS electric_utility,
COUNT(vehicle_id) AS vehicles_served
FROM electric_utilities
JOIN vehicle_electric_utilities USING(electric_utility_id)
JOIN vehicles USING(vehicle_id)
JOIN addresses a USING(address_id)
JOIN cities USING(city_id)
WHERE electric_utility_name IS NOT NULL
GROUP BY city, electric_utility
HAVING vehicles_served > 1
ORDER BY city, electric_utility);

-- Query 6: The most popular make and model from 2017
USE electric_vehicles;
CREATE OR REPLACE VIEW popular_model_view AS
(SELECT make_name AS make,
CONCAT(model_name," ",model_year) AS model,
COUNT(v.model_id) AS model_popularity
FROM vehicles v
JOIN vehicle_models USING(model_id)
JOIN vehicle_makes vma USING(make_id)
WHERE model_year = 2017
GROUP BY vma.make_id, v.model_id
ORDER BY model_popularity DESC);

