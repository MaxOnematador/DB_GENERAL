SELECT 
    ndwi_peru.id_ndwi,
    ndwi_peru.id_district,
    ndwi_peru.fecha,
    ndwi_peru.año,
    ndwi_peru.NDWI,
    ndwi_peru.estado_ndwi,
    district.city AS ciudad
FROM 
    NDWI_PERU_CASE AS ndwi_peru
JOIN 
    District AS district ON ndwi_peru.id_district = district.id

UNION ALL

SELECT 
    ndwi_colombia.id_ndwi,
    ndwi_colombia.id_district,
    ndwi_colombia.fecha,
    ndwi_colombia.año,
    ndwi_colombia.NDWI,
    ndwi_colombia.estado_ndwi,
    district.city AS ciudad
FROM 
    NDWI_COLOMBIA_CASE AS ndwi_colombia
JOIN 
    District AS district ON ndwi_colombia.id_district = district.id;
