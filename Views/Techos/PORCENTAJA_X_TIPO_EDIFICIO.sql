CREATE VIEW PORCENTAJA_X_TIPO_EDIFICIO AS
SELECT 
    id_district, 
    district_name, 
    (red_buildings * 100.0) / (red_buildings + yellow_buildings + green_buildings) AS red_percentage,
    (yellow_buildings * 100.0) / (red_buildings + yellow_buildings + green_buildings) AS yellow_percentage,
    (green_buildings * 100.0) / (red_buildings + yellow_buildings + green_buildings) AS green_percentage
FROM DB_ROOF_COUNT;

SELECT * FROM PORCENTAJA_X_TIPO_EDIFICIO