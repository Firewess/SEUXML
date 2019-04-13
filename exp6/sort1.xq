xquery version "1.0";
 
for $anime in doc("data30.xml")/animeList/anime
order by $anime/name[@language="Chinese"]
return $anime