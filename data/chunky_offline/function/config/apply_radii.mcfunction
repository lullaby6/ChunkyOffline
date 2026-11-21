data modify storage chunky_offline:temp worlds set from storage chunky_offline:config worlds
data modify storage chunky_offline:config worlds set value []

function chunky_offline:config/apply_radii_loop

data remove storage chunky_offline:temp worlds
data remove storage chunky_offline:temp entry
