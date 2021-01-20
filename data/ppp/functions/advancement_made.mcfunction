execute if score ppp_global ppp_player_count matches 1 run worldborder add 0.34
execute if score ppp_global ppp_player_count matches 2 run worldborder add 0.17
execute if score ppp_global ppp_player_count matches 3 run worldborder add 0.12
execute if score ppp_global ppp_player_count matches 4 run worldborder add 0.09
execute if score ppp_global ppp_player_count matches 5 run worldborder add 0.07
execute if score ppp_global ppp_player_count matches 6 run worldborder add 0.06
execute if score ppp_global ppp_player_count matches 7..8 run worldborder add 0.05
execute if score ppp_global ppp_player_count matches 9..11 run worldborder add 0.04
execute if score ppp_global ppp_player_count matches 12..16 run worldborder add 0.03
execute if score ppp_global ppp_player_count matches 17..33 run worldborder add 0.02
execute if score ppp_global ppp_player_count matches 34.. run worldborder add 0.01

tellraw @a ["", {"text":"Congratulations! ", "color":"light_purple"}, {"selector":"@s", "bold":true , "color":"dark_purple"}, {"text":" Expanded the Border!", "color":"light_purple"}]
title @s actionbar ["", {"text":"Congratulations! ", "color":"light_purple"}, {"text":"You", "bold":true , "color":"dark_purple"}, {"text":" Expanded the Border!", "color":"light_purple"}]

execute store result score ppp_global ppp_pearl_chance run time query gametime
scoreboard players operation ppp_global ppp_pearl_chance %= ppp_global ppp_player_count
execute if score ppp_global ppp_pearl_chance matches 0 run give @s minecraft:ender_pearl
execute if score ppp_global ppp_pearl_chance matches 0 run title @s actionbar ["", {"text":"WOW! ", "color":"light_purple"}, {"text":"You", "bold":true , "color":"dark_purple"}, {"text":" found a magical teleportation orb!", "color":"light_purple"}]
execute if score ppp_global ppp_pearl_chance matches 0 run tellraw @a ["", {"text":"WOW! ", "color":"light_purple"}, {"selector":"@s", "bold":true , "color":"dark_purple"}, {"text":" found a magical teleportation orb!", "color":"light_purple"}]
