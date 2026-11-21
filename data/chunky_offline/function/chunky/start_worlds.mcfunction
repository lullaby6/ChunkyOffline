# Iterate config.worlds and start generation for each entry.
data modify storage chunky_offline:temp worlds set from storage chunky_offline:config worlds

function chunky_offline:chunky/start_worlds_loop

data remove storage chunky_offline:temp worlds
data remove storage chunky_offline:temp world
data remove storage chunky_offline:temp radius
data remove storage chunky_offline:temp x
data remove storage chunky_offline:temp z
