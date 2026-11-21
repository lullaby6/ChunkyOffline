# Deferred boot: wait until Chunky exists before starting tasks.
execute if score boot chunky_offline.config matches 1 run return run function chunky_offline:chunky/boot

execute if score status chunky_offline.config matches 1 if entity @p run return run function chunky_offline:chunky/pause

execute if score status chunky_offline.config matches 0 unless entity @p run return run function chunky_offline:chunky/resume
