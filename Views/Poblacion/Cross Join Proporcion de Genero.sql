CREATE VIEW Cross_Join_Propocion_GENERO_PC AS
SELECT 
    C.id_district AS id_district_colombia,
    C.porcentaje_masculino AS porcentaje_masculino_colombia,
    C.porcentaje_femenino AS porcentaje_femenino_colombia,
    P.id_district AS id_district_peru,
    P.porcentaje_masculino AS porcentaje_masculino_peru,
    P.porcentaje_femenino AS porcentaje_femenino_peru
FROM Proporcion_genero_Colombia C
CROSS JOIN Proporcion_genero_Peru P;

select * from Cross_Join_Propocion_GENERO_PC;