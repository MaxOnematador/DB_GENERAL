CREATE VIEW Tasa_Crecimiento_Poblacional_Unificado AS
SELECT 
    id_district AS distrito,
    MIN(total_population) AS poblacion_minima,
    MAX(total_population) AS poblacion_maxima,
    (MAX(total_population) - MIN(total_population)) AS diferencia_poblacion,
    ROUND((MAX(total_population) - MIN(total_population)) * 100.0 / MIN(total_population), 2) AS tasa_crecimiento
FROM 
    (SELECT * FROM PERU_DB_POPULATION
     UNION ALL
     SELECT * FROM COLOMBIA_DB_POPULATION) AS poblacion
GROUP BY 
    id_district;

select * from Tasa_Crecimiento_Poblacional_Unificado;