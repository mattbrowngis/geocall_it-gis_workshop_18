# Geoprocessing in PostGIS / QGIS
---
## Pre-workshop discussion topics:

- Server(host + port), database, schema, table.  
- postgres vs postgis
- Postgis tools available in QGIS
- Quick overview of other admin tools
- where to find documentation
- https://www.postgresql.org/docs/
- https://postgis.net/documentation/
---
# Hands on topics
---
## Connecting to Postgres from QGIS
- create a new connection to the sample database
- view in QGIS browser
- drag and drop data 
---
## Executing and Visualizing Spatial Queries with DB Manager
- Open DB Manager
- open, investigate different views
- open sql editor - run simple queries
- Select all streets name LAKESHORE DR from jeffco_streets
- load results into QGIS
---
## Introduction to Postgis Geometry Functions
- buffer LAKESHORE DR by 100 Meters
- Making sense of units
- Reprojecting - web mercator vs UTM16N
- casting to geography
- dissolving buffers (union) - note multipolygon type
---
## Import / Export
- save results from TOC
- Save dissolved buffer to shapefile
- DB manager import dialog
- edit data and reimport to working schema
---
# BREAK
---
## Geometry Validity
- How to check for invalid geometry
- load bad_geometry table
- check isvalid and reason
- makevalid and gotchas
- geometry collections
---
## Creating a Service Area in Postgis
- load and inspect fake_power table
- create table to hold output
- buffer by 200 feet
- dissolve and dump buffer
- subdivide discussion
- validity revisited
---
## Ticket Analysis 
- add 500' and 1000' buffers to service Area
- check how many tickets would FPCO01 have received in 2017 by month with a 200' buffer
- How many MORE would 500 have added?  1000'?
---
## Geohash index clustering?

http://workshops.boundlessgeo.com/postgis-intro/clusterindex.html















