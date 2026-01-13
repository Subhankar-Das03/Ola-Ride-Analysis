CREATE DATABASE OLA_DB;
USE OLA_DB;



CREATE TABLE ola_rides (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(50) PRIMARY KEY,
    
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(50),
    
    Vehicle_Type VARCHAR(50),
    Pickup_Location VARCHAR(100),
    Drop_Location VARCHAR(100),
    
    V_TAT FLOAT,
    C_TAT FLOAT,
    
    Canceled_Rides_by_Customer VARCHAR(100),
    Canceled_Rides_by_Driver VARCHAR(100),
    
    Incomplete_Rides VARCHAR(10),
    Incomplete_Rides_Reason VARCHAR(255),
    
    Booking_Value INT,
    Payment_Method VARCHAR(50),
    Ride_Distance INT,
    
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    
    -- Feature engineered columns
    is_successful_booking TINYINT,
    is_customer_cancelled TINYINT,
    is_driver_cancelled TINYINT,
    
    booking_hour INT,
    booking_day INT,
    booking_weekday VARCHAR(20),
    booking_weekday_num INT
);



-- 1. Retrieve all successful bookings
SELECT * FROM ola_rides
WHERE is_successful_booking = 1;


-- 2. Find the average ride distance for each vehicle type
SELECT Vehicle_Type, Round(AVG(Ride_Distance),2) AS avg_ride_distance
FROM ola_rides
GROUP BY Vehicle_Type;

-- 3. Get the total number of cancelled rides by customers 
SELECT COUNT(*) AS customer_cancelled_rides
FROM ola_rides
WHERE is_customer_cancelled = 1;

-- 4. List the top 5 customers who booked the highest number of rides
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM ola_rides
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5; 

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT COUNT(*) AS driver_cancellations
FROM ola_rides
WHERE is_driver_cancelled = 1
AND Canceled_Rides_by_Driver = 'Personal & Car related issue'; 
 
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings
SELECT 
    MAX(Driver_Ratings) AS max_rating,
    MIN(Driver_Ratings) AS min_rating
FROM ola_rides
WHERE Vehicle_Type = 'Prime Sedan'
AND Driver_Ratings IS NOT NULL;  

-- 7. Retrieve all rides where payment was made using UPI
SELECT *
FROM ola_rides
WHERE Payment_Method = 'UPI';

-- 8. Find the average customer rating per vehicle type
SELECT 
    Vehicle_Type,
    Round(AVG(Customer_Rating),2) AS avg_customer_rating
FROM ola_rides
WHERE Customer_Rating IS NOT NULL
GROUP BY Vehicle_Type; 
 
-- 9. Calculate the total booking value of rides completed successfully 
SELECT SUM(Booking_Value) AS total_revenue
FROM ola_rides
WHERE is_successful_booking = 1;

-- 10. List all incomplete rides along with the reason
SELECT 
    Booking_ID,
    Incomplete_Rides,
    Incomplete_Rides_Reason
FROM ola_rides
WHERE Incomplete_Rides = 'Yes';
