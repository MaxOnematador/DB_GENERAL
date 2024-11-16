CREATE VIEW vista_promedio_anual_NDWI_Colombia AS
SELECT 
    COLOMBIA_DB_NDWI.id_district,
    COLOMBIA_DB_NDWI.año,
    AVG(COLOMBIA_DB_NDWI.NDWI) AS promedio_anual_NDWI_Colombia
FROM 
    COLOMBIA_DB_NDWI
GROUP BY 
    COLOMBIA_DB_NDWI.id_district,
    COLOMBIA_DB_NDWI.año;


select * from vista_promedio_anual_NDWI_Colombia;
drop view vista_promedio_anual_NDWI_Colombia;