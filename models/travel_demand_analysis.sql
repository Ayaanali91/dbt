SELECT
    t.country_name,
    t.country_code,
    t.tourist_arrivals,
    COALESCE(f.active_flights, 0) AS active_flights,
    f.avg_velocity
FROM {{ ref('latest_tourism') }} t
LEFT JOIN {{ ref('flight_activity_by_country') }} f
    ON t.country_name = f.origin_country