clear @a
loot give @s loot ppp:init/init
execute unless entity 0-0-0-0-0 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["pearl_tracker"]}
data modify entity 0-0-0-0-0 Pos[0] set from entity @s Inventory[0].tag.Decorations[0].x
data modify entity 0-0-0-0-0 Pos[2] set from entity @s Inventory[0].tag.Decorations[0].z
gamemode spectator @a

scoreboard players reset @a ppp_start
scoreboard players set ppp_global ppp_start 1
