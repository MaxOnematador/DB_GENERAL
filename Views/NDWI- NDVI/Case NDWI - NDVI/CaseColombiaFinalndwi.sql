CREATE VIEW NorCaseColombiaNDWI AS

SELECT 
    id_district, 
    año, 
    AVG(NDWI) AS promedio_NDWI
FROM 
    NDWI_COLOMBIA_CASE
GROUP BY 
    id_district, 
    año;

-- Crear vista para calcular el promedio de NDWI por distrito y año
CREATE VIEW NorCaseColombiaNDWIF AS
SELECT 
    id_district, 
    año, 
    AVG(NDWI) AS promedio_NDWI,
    CASE 
        WHEN AVG(NDWI) < 0 THEN 'Terreno seco'
        WHEN AVG(NDWI) >= 0 AND AVG(NDWI) < 0.2 THEN 'Humedad baja'
        WHEN AVG(NDWI) >= 0.2 AND AVG(NDWI) < 0.5 THEN 'Presencia moderada de agua'
        WHEN AVG(NDWI) >= 0.5 AND AVG(NDWI) < 0.7 THEN 'Presencia significativa de agua (óptimo)'
        WHEN AVG(NDWI) >= 0.7 THEN 'Cuerpos de agua grandes (óptimo)'
    END AS estado_ndwi
FROM 
    NDWI_COLOMBIA_CASE
GROUP BY 
    id_district, 
    año;

select * from NorCaseColombiaNDWI
select * from NorCaseColombiaNDWIF