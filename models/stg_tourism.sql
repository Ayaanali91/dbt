SELECT
    country_name,
    country_code,
    year,
    tourist_arrivals
FROM {{ source('raw_data', 'raw_tourism') }}