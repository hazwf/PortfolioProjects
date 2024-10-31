CREATE MATERIALIZED VIEW hotels AS (
    SELECT * FROM bookings_2018
    UNION ALL
    SELECT * FROM bookings_2019
    UNION ALL
    SELECT * FROM bookings_2020
);

-- What is the % of bookings that were canceled?
SELECT ROUND(100.0 * SUM(is_canceled) / COUNT(*), 1) AS cancellation_rate
FROM hotels;

-- Out of the canceled bookings, what is the % that did not show up?
SELECT 
    SUM(CASE WHEN reservation_status = 'No-Show' THEN 1 ELSE 0 END) AS no_show_cancellations,
    SUM(is_canceled) AS total_cancellations,
    ROUND((SUM(CASE WHEN reservation_status = 'No-Show' THEN 1 ELSE 0 END)::numeric / SUM(is_canceled)) * 100, 1) || '%' AS no_show_cancellation_rate
FROM hotels;

-- what is the number of bookings per year?
select arrival_date_year, count(*) as number_of_bookings
from hotels
group by arrival_date_year;

-- what is the total revenue per year for the 2 hotel types, considering the discounts too?
SELECT 
	h.hotel,
    h.arrival_date_year,
    ROUND(SUM((stays_in_weekend_nights + stays_in_week_nights) * avg_daily_rate * (1-m.discount))::numeric, 2) AS total_revenue
FROM hotels h
	join market_segment m on h.market_segment = m.market_segment
GROUP BY h.hotel, h.arrival_date_year
ORDER BY h.hotel, h.arrival_date_year;

-- what is the most popular meal types?
select meal, count(*) as meal_count
from hotels 
group by meal
order by meal_count desc;

-- which countries have the highest bookings, broken down by year and hotel type?
select country, hotel, arrival_date_year, count(*) as number_of_bookings
from hotels
group by hotel, arrival_date_year, country
order by number_of_bookings desc, country;

-- what is the average lead time per market segment?
select market_segment, round(avg(lead_time),1) as avg_lead_time
from hotels
group by market_segment
order by market_segment;

-- what is the % of bookings that come from repeated guests?
select round(sum(is_repeated_guest)::numeric/count(*)*100,1) || '%' as repeated_guests_rate
from hotels;

-- what are the average daily rates between different room types, broken down by hotel type and year?
select hotel, assigned_room_type, arrival_date_year, round(avg(avg_daily_rate)::numeric,2) as avg_daily_rate
from hotels
group by hotel, assigned_room_type, arrival_date_year;

-- do guests with special requests tend to spend more?
select total_special_requests, round(avg(avg_daily_rate)::numeric,2) as avg_daily_rate
from hotels
group by total_special_requests
order by avg_daily_rate desc