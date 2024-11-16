CREATE VIEW vista_cruzada_NDWI_Peru_Colombia AS
SELECT 
    peru.id_district AS id_district_peru,
    peru.año AS año_peru,
    peru.promedio_anual_NDWI_Peru,
    colombia.id_district AS id_district_colombia,
    colombia.año AS año_colombia,
    colombia.promedio_anual_NDWI_Colombia
FROM 
    vista_promedio_anual_NDWI_PERU peru
CROSS JOIN 
    vista_promedio_anual_NDWI_Colombia colombia
GROUP BY 
    peru.año,
    colombia.año,
    peru.id_district,
    colombia.id_district,
    peru.promedio_anual_NDWI_Peru,
    colombia.promedio_anual_NDWI_Colombia;
