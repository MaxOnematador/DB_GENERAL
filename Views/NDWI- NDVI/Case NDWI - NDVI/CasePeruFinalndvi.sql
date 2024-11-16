CREATE VIEW NorCasePeru AS
SELECT 
    id_district, 
    a�o, 
    AVG(NDVI) AS promedio_NDVI
FROM 
    NDVI_PERU_CASE
GROUP BY 
    id_district, 
    a�o;


CREATE VIEW NorCasePeruF AS
SELECT 
    id_district, 
    a�o, 
    AVG(NDVI) AS promedio_NDVI,
    CASE 
        WHEN AVG(NDVI) < 0 THEN 'No vegetaci�n'
        WHEN AVG(NDVI) >= 0 AND AVG(NDVI) < 0.2 THEN 'Vegetaci�n escasa'
        WHEN AVG(NDVI) >= 0.2 AND AVG(NDVI) < 0.5 THEN 'Vegetaci�n moderada'
        WHEN AVG(NDVI) >= 0.5 AND AVG(NDVI) < 0.7 THEN 'Vegetaci�n densa (�ptimo)'
        WHEN AVG(NDVI) >= 0.7 THEN 'Vegetaci�n muy densa (�ptimo)'
    END AS estado_ndvi
FROM 
    NDVI_PERU_CASE
GROUP BY 
    id_district, 
    a�o;

select * from NorCasePeru
select * from NorCasePeruF