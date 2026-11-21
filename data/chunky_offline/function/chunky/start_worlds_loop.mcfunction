execute unless data storage chunky_offline:temp worlds[0] run return 0

data modify storage chunky_offline:temp world set from storage chunky_offline:temp worlds[0].world
data modify storage chunky_offline:temp radius set from storage chunky_offline:temp worlds[0].radius
data modify storage chunky_offline:temp x set from storage chunky_offline:config x
data modify storage chunky_offline:temp z set from storage chunky_offline:config z
data remove storage chunky_offline:temp worlds[0]

function chunky_offline:chunky/start_world with storage chunky_offline:temp

function chunky_offline:chunky/start_worlds_loop
