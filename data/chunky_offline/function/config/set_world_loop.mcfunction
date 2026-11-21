execute unless data storage chunky_offline:temp worlds[0] run return 0

data modify storage chunky_offline:temp entry set from storage chunky_offline:temp worlds[0]
data remove storage chunky_offline:temp worlds[0]

data modify storage chunky_offline:temp check set value {}
data modify storage chunky_offline:temp check.world set from storage chunky_offline:temp entry.world
execute store success score #match chunky_offline.config run data modify storage chunky_offline:temp check.world set from storage chunky_offline:temp target_world
# success 0 means values were already equal (this is the target world).
execute if score #match chunky_offline.config matches 0 run data modify storage chunky_offline:temp entry.radius set from storage chunky_offline:temp target_radius

data modify storage chunky_offline:config worlds append from storage chunky_offline:temp entry

function chunky_offline:config/set_world_loop
