$data modify storage chunky_offline:config radius set value $(radius)
$data modify storage chunky_offline:config x set value $(x)
$data modify storage chunky_offline:config z set value $(z)

# No dimension provided. Apply radius to every configured world.
function chunky_offline:config/apply_radii

$function chunky_offline:message {"text":"Config: Radius: $(radius), Center: $(x) $(z)."}

execute if score status chunky_offline.config matches 1 run function chunky_offline:chunky/restart_worlds
