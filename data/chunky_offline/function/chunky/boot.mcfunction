# Chunky is not ready during #minecraft:load, so first-tick boot starts or resumes instead.
scoreboard players set boot chunky_offline.config 0

execute if score status chunky_offline.config matches -1 run return 0
execute if entity @p run return run function chunky_offline:chunky/pause

execute unless data storage chunky_offline:config started run return run function chunky_offline:chunky/start
function chunky_offline:chunky/resume
