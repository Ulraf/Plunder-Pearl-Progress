scoreboard players reset @a hce_start

# find area
clear @a
loot give @s loot hcexpand:init/init
execute unless entity 0-0-0-0-0 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,0]}
data modify entity 0-0-0-0-0 Pos[0] set from entity @s Inventory[0].tag.Decorations[0].x
data modify entity 0-0-0-0-0 Pos[2] set from entity @s Inventory[0].tag.Decorations[0].z
gamemode spectator @s
execute at 0-0-0-0-0 run spreadplayers ~ ~ 100 300 false @s
tp 0-0-0-0-0 @s

# seach for tree
function hcexpand:find_tree

# start game
tp @a 0-0-0-0-0
execute at 0-0-0-0-0 run setworldspawn ~ ~ ~
execute at 0-0-0-0-0 run worldborder center ~ ~
kill 0-0-0-0-0
gamemode survival @a
clear @a
worldborder set 1
time set day
scoreboard players set hcexpand hce_start 1