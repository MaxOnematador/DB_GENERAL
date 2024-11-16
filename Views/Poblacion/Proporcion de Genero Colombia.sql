Create view Proporcion_genero_Colombia as 

SELECT 
    id_district,
    (male_population * 1.0 / total_population) * 100 AS porcentaje_masculino,
    (female_population * 1.0 / total_population) * 100 AS porcentaje_femenino
FROM 
    COLOMBIA_DB_POPULATION;


select * from Proporcion_genero_Colombia;