scoreboard players set status chunky_offline.config 1

function chunky_offline:message {"text":"Resumed."}

function chunky_offline:chunky/quiet

# Prefer saved progress when the last stop was clean.
function chunky_offline:utils/macro/command {"command":"chunky continue"}

# If continue found nothing (hard kill / tasks never saved), recreate from config.
# If continue already started them, start is a no-op ("already running").
function chunky_offline:chunky/start_worlds
function chunky_offline:utils/macro/command {"command":"chunky confirm"}
