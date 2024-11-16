CREATE VIEW vista_promedio_anual_NDWI_PERU AS
SELECT 
    PERU_DB_NDWI.id_district,
    PERU_DB_NDWI.año,
    AVG(PERU_DB_NDWI.NDWI) AS promedio_anual_NDWI_Peru
FROM 
    PERU_DB_NDWI
GROUP BY 
    PERU_DB_NDWI.id_district,
    PERU_DB_NDWI.año;


select * from vista_promedio_anual_NDWI_PERU;
drop view vista_promedio_anual_NDVI_PERU;