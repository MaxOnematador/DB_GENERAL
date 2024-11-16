CREATE VIEW RAZON_EDIFICACIONESVERDES_X_ROJASYAMARILLAS AS
SELECT 
    id_district, 
    district_name, 
    green_buildings * 1.0 / red_buildings AS green_to_red_ratio, 
    green_buildings * 1.0 / yellow_buildings AS green_to_yellow_ratio
FROM DB_ROOF_COUNT;

SELECT * FROM RAZON_EDIFICACIONESVERDES_X_ROJASYAMARILLAS