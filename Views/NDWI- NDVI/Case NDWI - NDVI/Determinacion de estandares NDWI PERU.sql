CREATE VIEW NDWI_PERU_CASE AS
SELECT 
    id AS id_ndwi,           
    id_district,
    fecha,
    año,
    NDWI,
    CASE 
        WHEN NDWI < 0 THEN 'Terreno seco'
        WHEN NDWI >= 0 AND NDWI < 0.2 THEN 'Humedad baja'
        WHEN NDWI >= 0.2 AND NDWI < 0.5 THEN 'Presencia moderada de agua'
        WHEN NDWI >= 0.5 AND NDWI < 0.7 THEN 'Presencia significativa de agua (óptimo)'
        WHEN NDWI >= 0.7 THEN 'Cuerpos de agua grandes (óptimo)'
    END AS estado_ndwi
FROM 
    PERU_DB_NDWI;

SELECT * FROM NDWI_PERU_CASE;
