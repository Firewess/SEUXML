xquery version "1.0";
 
for $anime in doc("data30.xml")/animeList/anime
order by min($anime/price_list/platform/price/@estimated_cost)
return $anime