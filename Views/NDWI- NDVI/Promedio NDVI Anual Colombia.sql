CREATE VIEW vista_promedio_anual_NDVI_Colombia AS
SELECT 
    COLOMBIA_DB_NDVI.id_district,
    COLOMBIA_DB_NDVI.a�o,
    AVG(COLOMBIA_DB_NDVI.NDVI) AS promedio_anual_NDVI_Colombia
FROM 
    COLOMBIA_DB_NDVI
GROUP BY 
    COLOMBIA_DB_NDVI.id_district,
    COLOMBIA_DB_NDVI.a�o;


select * from vista_promedio_anual_NDVI_Colombia;
drop view vista_promedio_anual_NDVI_Colombia;