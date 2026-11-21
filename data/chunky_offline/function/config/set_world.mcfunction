# Per-dimension override: updates only the matching world's radius, plus shared center.
$data modify storage chunky_offline:config x set value $(x)
$data modify storage chunky_offline:config z set value $(z)
$data modify storage chunky_offline:temp target_world set value "$(world)"
$data modify storage chunky_offline:temp target_radius set value $(radius)

data modify storage chunky_offline:temp worlds set from storage chunky_offline:config worlds
data modify storage chunky_offline:config worlds set value []
function chunky_offline:config/set_world_loop

$function chunky_offline:message {"text":"Config: World: $(world), Radius: $(radius), Center: $(x) $(z)."}

data remove storage chunky_offline:temp worlds
data remove storage chunky_offline:temp entry
data remove storage chunky_offline:temp target_world
data remove storage chunky_offline:temp target_radius

execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky pause"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky cancel"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky confirm"}

execute if score status chunky_offline.config matches 1 run function chunky_offline:chunky/start_worlds
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky confirm"}
