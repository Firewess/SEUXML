xquery version "1.0";
 
for $anime in doc("data10.xml")/animeList/anime
where $anime/seasons/@current_season > 1 (: not first season :) and $anime/type = "Blood" (: type is Blood :)
return 
<anime>
    {$anime}
</anime>