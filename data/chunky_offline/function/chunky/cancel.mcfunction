scoreboard players set status chunky_offline.config -1
# Allow a later force_start/boot to create new tasks after a manual cancel.
data remove storage chunky_offline:config started

function chunky_offline:message {"text":"Canceled."}

function chunky_offline:utils/macro/command {"command":"chunky cancel"}
function chunky_offline:utils/macro/command {"command":"chunky confirm"}
