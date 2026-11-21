scoreboard players set status chunky_offline.config 1
# Marks that tasks were created so later boots can continue instead of starting fresh.
data modify storage chunky_offline:config started set value 1b

function chunky_offline:message {"text":"Started."}

function chunky_offline:chunky/quiet
function chunky_offline:chunky/restart_worlds
