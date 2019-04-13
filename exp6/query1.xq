xquery version "1.0";
 
for $anime in doc("data30.xml")/animeList/anime
where $anime/@episode_num != "unknown" and $anime/@episode_num <= 2 * $anime/episode_list/@current_episode (: over half of total episodes :)
return 
<animeList>
    <anime>
        {$anime/name}
        <min_price>
            {min($anime/price_list/platform/price/@estimated_cost)}
        </min_price>
    </anime>
</animeList>