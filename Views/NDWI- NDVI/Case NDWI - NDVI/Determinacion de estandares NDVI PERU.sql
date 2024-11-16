CREATE VIEW NDVI_PERU_CASE AS
SELECT 
    id AS id_ndvi,           
    id_district,
    fecha,
    año,
    NDVI,
    CASE 
        WHEN NDVI < 0 THEN 'No vegetación'
        WHEN NDVI >= 0 AND NDVI < 0.2 THEN 'Vegetación escasa'
        WHEN NDVI >= 0.2 AND NDVI < 0.5 THEN 'Vegetación moderada'
        WHEN NDVI >= 0.5 AND NDVI < 0.7 THEN 'Vegetación densa (óptimo)'
        WHEN NDVI >= 0.7 THEN 'Vegetación muy densa (óptimo)'
    END AS estado_ndvi
FROM 
    PERU_DB_NDVI;

SELECT * FROM NDVI_PERU_CASE;
