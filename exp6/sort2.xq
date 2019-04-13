xquery version "1.0";
 
for $anime in doc("data30.xml")/animeList/anime
order by $anime/@episode_num
return $anime