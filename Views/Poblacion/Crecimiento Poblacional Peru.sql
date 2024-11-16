
CREATE VIEW Tasa_Crecimiento_Poblacional_PERU AS

SELECT 
    id_district,
    MIN(total_population) AS poblacion_minima,
    MAX(total_population) AS poblacion_maxima,
    (MAX(total_population) - MIN(total_population)) AS diferencia_poblacion,
    ROUND((MAX(total_population) - MIN(total_population)) * 100.0 / MIN(total_population), 2) AS tasa_crecimiento

FROM PERU_DB_POPULATION
GROUP BY 
    id_district;


select * from Tasa_Crecimiento_Poblacional_PERU;


