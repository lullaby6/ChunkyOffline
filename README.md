# Chunky Offline

Chunky Offline is an extension of [Chunky](https://github.com/pop4959/Chunky) to generate chunks when no players are online and it runs automatically, the default values are radius as `10000` and center at `0 0`.

By default it starts generation for every vanilla dimension (`minecraft:overworld`, `minecraft:the_nether`, `minecraft:the_end`).

## Config

Change the config for every dimension:

```mcfunction
/function chunky_offline:config/set {"radius":10000,"x":0,"z":0}
```

Change one dimension only:

```mcfunction
/function chunky_offline:config/set_world {"world":"minecraft:the_nether","radius":1250,"x":0,"z":0}
```

Or replace the full worlds list:

```mcfunction
# Fabric / NeoForge
/data modify storage chunky_offline:config worlds set value [{"world":"minecraft:overworld","radius":10000},{"world":"minecraft:the_nether","radius":1250},{"world":"minecraft:the_end","radius":10000}]

# Paper
/data modify storage chunky_offline:config worlds set value [{"world":"world","radius":10000},{"world":"world_nether","radius":1250},{"world":"world_the_end","radius":10000}]
```

Disable/enable global messages:

```mcfunction
/function chunky_offline:config/global_messages/<enable | disable>
```

Force start (only if you has been canceled the process manually):

```mcfunction
/function chunky_offline:chunky/force_start
```

## Commands

Cancel:

```mcfunction
/function chunky_offline:chunky/cancel
```

Pause:

```mcfunction
/function chunky_offline:chunky/pause
```

Resume:

```mcfunction
/function chunky_offline:chunky/resume
```

Manually start (this command runs automatically when Chunky Oflline loads):

```mcfunction
/function chunky_offline:chunky/start
```
