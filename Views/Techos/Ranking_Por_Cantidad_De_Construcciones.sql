
CREATE VIEW Ranking_Por_Cantidad_De_Construcciones AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY (red_buildings + yellow_buildings + green_buildings) DESC) AS ranking,
    id_district, 
    district_name, 
    (red_buildings + yellow_buildings + green_buildings) AS total_buildings 
FROM DB_ROOF_COUNT;


SELECT * FROM Ranking_Por_Cantidad_De_Construcciones
