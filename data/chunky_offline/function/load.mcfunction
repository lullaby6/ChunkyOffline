scoreboard objectives add chunky_offline.config dummy

execute unless data storage chunky_offline:config load run function chunky_offline:config/load
# Migrate older installs that stored worlds as a plain string list.
execute unless data storage chunky_offline:config worlds[0].world run data modify storage chunky_offline:config worlds set value [{"world":"minecraft:overworld","radius":10000},{"world":"minecraft:the_nether","radius":10000},{"world":"minecraft:the_end","radius":10000}]

scoreboard players set boot chunky_offline.config 1
