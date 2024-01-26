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