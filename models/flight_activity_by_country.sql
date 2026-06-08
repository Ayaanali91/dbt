SELECT
    origin_country,
    COUNT(*) AS active_flights,
    AVG(velocity) AS avg_velocity
FROM {{ ref('stg_flights') }}
GROUP BY origin_country