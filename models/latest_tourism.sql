SELECT
    country_name,
    country_code,
    tourist_arrivals
FROM {{ ref('stg_tourism') }}
WHERE year = (
    SELECT MAX(year)
    FROM {{ ref('stg_tourism') }}
)