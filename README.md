# Urban Green Spaces Project
### Spatial Databases 376 Lab 01  By Clio Bate 01/29/2024
This project was created as part of Spatial Databases at Clark University S2024. The objective of this assignent is to set up Git/Git Bash on the local machine, and familiarize ourselves with SQL and the software that will be used in this class(PgAdmin 4, QGIS). This will be done through analyzing green spaces in a city of choice. I identified the five largest parks in Miami, calculated the total area of parks within the city, and created a map to visualize my fidnings(optional).

#### Methods
1. Set up Git Bash and create a repository and initiailze it on my local machine- I had already downlowaded and used Git Bash, so I only had to create aned add the reposity, UrbanGreenSpacesProject
2. Chose a city ownload the data in pbf format. [Link to data](https://download.bbbike.org/osm/bbbike/Miami/)
3. Ceate the a database in PgAdmin osm2pgsql -d urban_green_spaces -U postgres -W
 ` C:\Users\cvale\Clark_Assignments\Databases_S24\UrbanGreenSpacesProject\Miami.osm.pbf `
4. In pgAdmin, preform anaysis ....
5. Open QGIS and connect to Urban Green Spaces Project
6. Make maps
7. Push everything to GitHub


#### Findings
The total area of green space in Miami is = 17255910.3 sq m 

The top 5 largest green spaces by name and area, which are as follows:
1. Crandon Park: 4813915.0 sq m
2. Bill Baggs Cape Florida State Park: 2125852.9 sq m
3. Virginia Key Beach North Point Park: 1683502.5 sq m
4. Matheson Hammock Park: 1037290.2 sq m
5. Hialeah Park Race Track: 1000239.7 sq m 


#### Visualizations
Map created in QGIS




---------------------------------------------

including your objectives,
methods, findings, and visualizations.
Analysis Report: Write a report detailing your methodology, analyses, and findings. Include
screenshots from QGIS of your visualizations.


para hacer antes de que se la suba
1. actualizar el mapa para incluyir el resumen y los descubrimientos
2. terminar con el README (metólogo, añadir las fotitos del mapa, chequear el formato)
3. dejar comentarios en el código

