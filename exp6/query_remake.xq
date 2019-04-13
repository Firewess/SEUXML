xquery version "1.0";
 
 let $sorted_anime :=
    for $anime at $i in doc("remake.xml")/episode_left/*/anime
    where $anime/min_price <= 50 and $anime/details/type != "Blood"
    order by $i
    return $anime

for $anime in subsequence($sorted_anime, 1, 10)
return
   $anime