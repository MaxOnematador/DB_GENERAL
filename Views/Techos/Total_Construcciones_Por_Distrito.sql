CREATE VIEW Total_Construcciones_Por_Distrito AS
SELECT 
    id_district, 
    district_name, 
    (red_buildings + yellow_buildings + green_buildings) AS total_buildings 
FROM DB_ROOF_COUNT;

select * from Total_Construcciones_Por_Distrito