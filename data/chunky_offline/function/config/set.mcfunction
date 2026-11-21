$data modify storage chunky_offline:config radius set value $(radius)
$data modify storage chunky_offline:config x set value $(x)
$data modify storage chunky_offline:config z set value $(z)

# No dimension provided. Apply radius to every configured world.
function chunky_offline:config/apply_radii

$function chunky_offline:message {"text":"Config: Radius: $(radius), Center: $(x) $(z)."}

execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky pause"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky cancel"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky confirm"}

execute if score status chunky_offline.config matches 1 run function chunky_offline:chunky/start_worlds
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky confirm"}
