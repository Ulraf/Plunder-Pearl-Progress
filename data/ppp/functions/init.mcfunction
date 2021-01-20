scoreboard players reset @a ppp_start

# Mark a location up to 300 blocks away from a strong hold
clear @a
loot give @s loot ppp:init/init
execute unless entity 0-0-0-0-0 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],Invisible:1b,Invulnerable:1b,Marker:1b}
data modify entity 0-0-0-0-0 Pos[0] set from entity @s Inventory[0].tag.Decorations[0].x
data modify entity 0-0-0-0-0 Pos[2] set from entity @s Inventory[0].tag.Decorations[0].z
execute at 0-0-0-0-0 run spreadplayers ~ ~ 100 300 false 0-0-0-0-0

# Seach for tree
function ppp:find_tree

# Start game
tp @a 0-0-0-0-0
execute at 0-0-0-0-0 run setworldspawn ~ ~ ~
execute at 0-0-0-0-0 run worldborder center ~ ~
worldborder set 1
kill 0-0-0-0-0
clear @a
gamemode survival @a
time set day
scoreboard players set ppp_global ppp_start 1