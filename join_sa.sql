SELECT *
FROM cities, continents, countries, cities_countries_continents
WHERE cities.id = cities_countries_continents.ciudades_id
AND continents.id=cities_countries_continents.continente_id
AND countries.id=cities_countries_continents.paises_id
