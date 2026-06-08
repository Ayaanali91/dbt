SELECT
    icao24,
    TRIM(callsign) AS callsign,
    origin_country,
    latitude,
    longitude,
    velocity,
    on_ground,
    TIMESTAMP_SECONDS(last_contact) AS last_contact_time
FROM {{ source('raw_data', 'raw_flights') }}