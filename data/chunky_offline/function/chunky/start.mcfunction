scoreboard players set status chunky_offline.config 1

function chunky_offline:message {"text":"Started."}

chunky pause
chunky cancel

$chunky center $(x) $(z)

$chunky radius $(radius)

chunky start