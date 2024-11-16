CREATE VIEW Promedio_Genero_PC AS
SELECT 
    id_district, 
    AVG(porcentaje_masculino) AS promedio_porcentaje_masculino, 
    AVG(porcentaje_femenino) AS promedio_porcentaje_femenino
FROM 
    (SELECT * FROM Proporcion_genero_Colombia
     UNION ALL
     SELECT * FROM Proporcion_genero_Peru) AS datos_unificados
GROUP BY 
    id_district;


select * from Promedio_Genero_PC
