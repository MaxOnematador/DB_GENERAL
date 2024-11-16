CREATE VIEW NorCasePeru AS
SELECT 
    id_district, 
    año, 
    AVG(NDVI) AS promedio_NDVI
FROM 
    NDVI_PERU_CASE
GROUP BY 
    id_district, 
    año;


CREATE VIEW NorCasePeruF AS
SELECT 
    id_district, 
    año, 
    AVG(NDVI) AS promedio_NDVI,
    CASE 
        WHEN AVG(NDVI) < 0 THEN 'No vegetación'
        WHEN AVG(NDVI) >= 0 AND AVG(NDVI) < 0.2 THEN 'Vegetación escasa'
        WHEN AVG(NDVI) >= 0.2 AND AVG(NDVI) < 0.5 THEN 'Vegetación moderada'
        WHEN AVG(NDVI) >= 0.5 AND AVG(NDVI) < 0.7 THEN 'Vegetación densa (óptimo)'
        WHEN AVG(NDVI) >= 0.7 THEN 'Vegetación muy densa (óptimo)'
    END AS estado_ndvi
FROM 
    NDVI_PERU_CASE
GROUP BY 
    id_district, 
    año;

select * from NorCasePeru
select * from NorCasePeruF