xquery version "1.0";
 
for $anime in doc("data5.xml")/animeList/anime
where $anime/@update_cycle = "weekly" (: weekly update :) and $anime/price_list/platform/@platform_name = "bilibili" (: platform is bilibili :)
return 
<animeList>
    <anime>
        {$anime/name}
        {$anime/description}
    </anime>
</animeList>