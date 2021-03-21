tellraw @a[tag=ppp_debug] "init start"

scoreboard players set ppp_global ppp_player_count 0
scoreboard players set ppp_global ppp_pearl_time 100

tag @a[tag=ppp_counted] remove ppp_counted

kill @e[type=armor_stand,tag=pearl_tracker]
kill @e[type=ender_pearl]

clear @a
loot give @s loot ppp:init/init
execute unless entity 0-0-0-0-0 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],Invisible:1b,Invulnerable:1b,Marker:1b}
data modify entity 0-0-0-0-0 Pos[0] set from entity @s Inventory[0].tag.Decorations[0].x
data modify entity 0-0-0-0-0 Pos[2] set from entity @s Inventory[0].tag.Decorations[0].z
gamemode spectator @a

scoreboard players set ppp_global ppp_start 2

tellraw @a[tag=ppp_debug] "init end"
