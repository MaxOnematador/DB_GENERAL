
-- Total de Construcciones por Distrito
Create view Total_Construcciones_Distrito As 
SELECT 
    id_district, 
    district_name, 
    (red_buildings + yellow_buildings + green_buildings) AS total_buildings 
FROM DB_ROOF_COUNT;


-- Porcentaje por tipo de edificio
SELECT 
    id_district, 
    district_name, 
    (red_buildings * 100.0) / (red_buildings + yellow_buildings + green_buildings) AS red_percentage,
    (yellow_buildings * 100.0) / (red_buildings + yellow_buildings + green_buildings) AS yellow_percentage,
    (green_buildings * 100.0) / (red_buildings + yellow_buildings + green_buildings) AS green_percentage
FROM DB_ROOF_COUNT;


-- Razón de edificaciones verdes respecto a las rojas y amarillas:

SELECT 
    id_district, 
    district_name, 
    green_buildings * 1.0 / red_buildings AS green_to_red_ratio, 
    green_buildings * 1.0 / yellow_buildings AS green_to_yellow_ratio
FROM DB_ROOF_COUNT;


-- Ranking de distrito con mas construcciones, orden es desecendente 

SELECT 
    id_district, 
    district_name, 
    (red_buildings + yellow_buildings + green_buildings) AS total_buildings 
FROM DB_ROOF_COUNT
ORDER BY total_buildings DESC;
