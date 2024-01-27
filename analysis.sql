SELECT osm_id, name, ST_area(way) as area
FROM planet_osm_polygon
WHERE leisure = 'park'
ORDER BY area DESC;
DELETE FROM planet_osm_polygon
WHERE name IS NULL

CREATE TABLE green_spaces (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
location GEOMETRY(Point, 3857), /*ERROR: Geometry SRID (3857) does not match column SRID (4326) SQL state: 22023 */
area_sq_m NUMERIC
);

INSERT INTO green_spaces (name, location, area_sq_m)
SELECT name, ST_Centroid(way), ST_Area(way)
FROM planet_osm_polygon
WHERE leisure = 'park';

/* Top 5 Largest Green Spaces */
SELECT name, ST_Area(way) as area
FROM planet_osm_polygon
WHERE leisure = 'park'
ORDER BY area DESC
LIMIT 5;
/* The query lists the top 5 largest green spaces by name and area, which are as follows:
Crandon Park: 4813915.0 sq m,
Bill Baggs Cape Florida State Park: 2125852.9 sq m,
Virginia Key Beach North Point Park: 1683502.5 sq m,
Matheson Hammock Park: 1037290.2 sq m
Hialeah Park Race Track: 1000239.7 sq m */



SELECT SUM(ST_Area(way)) as total_green_space_area
FROM planet_osm_polygon
WHERE leisure = 'park';
/* The total area of green space in Miami is = 17255910.3 */


/* https://download.bbbike.org/osm/bbbike/Miami/ */