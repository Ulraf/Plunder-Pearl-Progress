execute unless entity @e[type=armor_stand,tag=pearl_tracker] if entity @e[type=minecraft:ender_pearl] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["pearl_tracker"]}

execute at @e[type=ender_pearl] run tp @e[type=armor_stand,tag=pearl_tracker] ~ ~ ~

execute if entity @e[type=armor_stand,tag=pearl_tracker] unless entity @e[type=minecraft:ender_pearl] at @e[type=armor_stand,tag=pearl_tracker] run worldborder center ~ ~
execute if entity @e[type=armor_stand,tag=pearl_tracker] unless entity @e[type=minecraft:ender_pearl] at @e[type=armor_stand,tag=pearl_tracker] run tp @a ~ ~ ~
execute if entity @e[type=armor_stand,tag=pearl_tracker] unless entity @e[type=minecraft:ender_pearl] run kill @e[type=armor_stand,tag=pearl_tracker]
