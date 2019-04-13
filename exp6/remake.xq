xquery version "1.0";

<episode_left>
    <overHalt>
        {for $anime in doc("data30.xml")/animeList/anime
        where $anime/@episode_num != "unknown" and $anime/@episode_num >= 2 * $anime/episode_list/@current_episode
        order by $anime/name[@language="Chinese"]
        return
        <anime>
            {$anime/name}
            <details>
                {$anime/type}
                {$anime/description}
            </details>
            <min_price>
                {min($anime/price_list/platform/price/@estimated_cost)}
            </min_price>
        </anime>}
    </overHalt>
    <overQuarter>
        {for $anime in doc("data30.xml")/animeList/anime
        where $anime/@episode_num != "unknown" and 3 * $anime/@episode_num >= 4 * $anime/episode_list/@current_episode
        order by $anime/name[@language="Chinese"]
        return
        <anime>
            {$anime/name}
            <details>
                {$anime/type}
                {$anime/description}
            </details>
            <min_price>
                {min($anime/price_list/platform/price/@estimated_cost)}
            </min_price>
        </anime>}
    </overQuarter>
    <underQuarter>
        {for $anime in doc("data30.xml")/animeList/anime
        where $anime/@episode_num != "unknown" and 3 * $anime/@episode_num <= 4 * $anime/episode_list/@current_episode
        order by $anime/name[@language="Chinese"]
        return
        <anime>
            {$anime/name}
            <details>
                {$anime/type}
                {$anime/description}
            </details>
            <min_price>
                {min($anime/price_list/platform/price/@estimated_cost)}
            </min_price>
        </anime>}
    </underQuarter>
    <unknown>
        {for $anime in doc("data30.xml")/animeList/anime
        where $anime/@episode_num = "unknown"
        order by $anime/name[@language="Chinese"]
        return
        <anime>
            {$anime/name}
            <details>
                {$anime/type}
                {$anime/description}
            </details>
            <min_price>
                {min($anime/price_list/platform/price/@estimated_cost)}
            </min_price>
        </anime>}
    </unknown>
</episode_left>