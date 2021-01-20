execute unless score @s ppp_pearl_time matches 0.. run scoreboard players operation @s ppp_pearl_time = ppp_global ppp_pearl_time
scoreboard players remove @s ppp_pearl_time 1

particle minecraft:composter ~ ~.3 ~ 0.1 0.2 0.1 0.5 10
execute if score @s ppp_pearl_time matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:ender_pearl", Count:1b}}
execute if score @s ppp_pearl_time matches 0 run particle minecraft:poof ~ ~.3 ~ 0.1 0.2 0.1 0.1 50
execute if score @s ppp_pearl_time matches 0 run kill @s