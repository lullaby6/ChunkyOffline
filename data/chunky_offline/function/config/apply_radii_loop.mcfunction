execute unless data storage chunky_offline:temp worlds[0] run return 0

data modify storage chunky_offline:temp entry set from storage chunky_offline:temp worlds[0]
data remove storage chunky_offline:temp worlds[0]

data modify storage chunky_offline:temp entry.radius set from storage chunky_offline:config radius

data modify storage chunky_offline:config worlds append from storage chunky_offline:temp entry

function chunky_offline:config/apply_radii_loop
