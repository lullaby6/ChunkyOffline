scoreboard players set status chunky_offline.config 1
# Marks that tasks were created so later boots can continue instead of starting fresh.
data modify storage chunky_offline:config started set value 1b

function chunky_offline:message {"text":"Started."}

# Log every 15 seconds instead of 1
function chunky_offline:utils/macro/command {"command":"chunky quiet 15"}
function chunky_offline:utils/macro/command {"command":"chunky pause"}
function chunky_offline:utils/macro/command {"command":"chunky cancel"}
function chunky_offline:utils/macro/command {"command":"chunky confirm"}

# Start one Chunky task per configured world/radius.
function chunky_offline:chunky/start_worlds

function chunky_offline:utils/macro/command {"command":"chunky confirm"}
