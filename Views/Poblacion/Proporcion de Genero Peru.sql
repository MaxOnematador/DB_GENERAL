Create view Proporcion_genero_Peru as 

SELECT 
    id_district,
    (male_population * 1.0 / total_population) * 100 AS porcentaje_masculino,
    (female_population * 1.0 / total_population) * 100 AS porcentaje_femenino
FROM 
    PERU_DB_POPULATION;


select * from Proporcion_genero_Peru;