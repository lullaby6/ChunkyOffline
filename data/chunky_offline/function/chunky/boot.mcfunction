# Delayed boot. Chunky task files may not be ready on the first tick on heavy servers.
execute if score status chunky_offline.config matches -1 run return 0
execute if entity @p run return run function chunky_offline:chunky/pause

execute unless data storage chunky_offline:config started run say [Chunky Offline] Started.
execute unless data storage chunky_offline:config started run return run function chunky_offline:chunky/start

# use /say once so it shows up in the log
say [Chunky Offline] Resumed.
function chunky_offline:chunky/resume
