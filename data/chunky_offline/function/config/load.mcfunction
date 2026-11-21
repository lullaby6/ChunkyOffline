data modify storage chunky_offline:config load set value 1b
data modify storage chunky_offline:config radius set value 10000
data modify storage chunky_offline:config x set value 0
data modify storage chunky_offline:config z set value 0
data modify storage chunky_offline:config selector set value "@a"
# Per-world radii. Override individual entries to customize a dimension.
data modify storage chunky_offline:config worlds set value [{"world":"minecraft:overworld","radius":10000},{"world":"minecraft:the_nether","radius":10000},{"world":"minecraft:the_end","radius":10000}]
