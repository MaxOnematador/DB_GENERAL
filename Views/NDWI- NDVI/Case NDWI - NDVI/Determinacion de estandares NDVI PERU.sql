CREATE VIEW NDVI_PERU_CASE AS
SELECT 
    id AS id_ndvi,           
    id_district,
    fecha,
    a�o,
    NDVI,
    CASE 
        WHEN NDVI < 0 THEN 'No vegetaci�n'
        WHEN NDVI >= 0 AND NDVI < 0.2 THEN 'Vegetaci�n escasa'
        WHEN NDVI >= 0.2 AND NDVI < 0.5 THEN 'Vegetaci�n moderada'
        WHEN NDVI >= 0.5 AND NDVI < 0.7 THEN 'Vegetaci�n densa (�ptimo)'
        WHEN NDVI >= 0.7 THEN 'Vegetaci�n muy densa (�ptimo)'
    END AS estado_ndvi
FROM 
    PERU_DB_NDVI;

SELECT * FROM NDVI_PERU_CASE;
