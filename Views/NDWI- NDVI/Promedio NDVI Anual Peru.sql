CREATE VIEW vista_promedio_anual_NDVI_PERU AS
SELECT 
    PERU_DB_NDVI.id_district,
    PERU_DB_NDVI.año,
    AVG(PERU_DB_NDVI.NDVI) AS promedio_anual_NDVI_Peru
FROM 
    PERU_DB_NDVI
GROUP BY 
    PERU_DB_NDVI.id_district,
    PERU_DB_NDVI.año;


select * from vista_promedio_anual_NDVI_PERU;
drop view vista_promedio_anual_NDVI_PERU;
