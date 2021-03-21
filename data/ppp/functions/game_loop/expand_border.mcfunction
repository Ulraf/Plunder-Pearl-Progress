execute if score ppp_global ppp_player_count matches 1 run worldborder add 0.34
execute if score ppp_global ppp_player_count matches 1 run scoreboard players add ppp_global ppp_wb_subsize 170
execute if score ppp_global ppp_player_count matches 2 run worldborder add 0.17
execute if score ppp_global ppp_player_count matches 2 run scoreboard players add ppp_global ppp_wb_subsize 85
execute if score ppp_global ppp_player_count matches 3 run worldborder add 0.12
execute if score ppp_global ppp_player_count matches 3 run scoreboard players add ppp_global ppp_wb_subsize 60
execute if score ppp_global ppp_player_count matches 4 run worldborder add 0.09
execute if score ppp_global ppp_player_count matches 4 run scoreboard players add ppp_global ppp_wb_subsize 45
execute if score ppp_global ppp_player_count matches 5 run worldborder add 0.07
execute if score ppp_global ppp_player_count matches 5 run scoreboard players add ppp_global ppp_wb_subsize 35
execute if score ppp_global ppp_player_count matches 6 run worldborder add 0.06
execute if score ppp_global ppp_player_count matches 6 run scoreboard players add ppp_global ppp_wb_subsize 30
execute if score ppp_global ppp_player_count matches 7..8 run worldborder add 0.05
execute if score ppp_global ppp_player_count matches 7..8 run scoreboard players add ppp_global ppp_wb_subsize 25
execute if score ppp_global ppp_player_count matches 9..11 run worldborder add 0.04
execute if score ppp_global ppp_player_count matches 9..11 run scoreboard players add ppp_global ppp_wb_subsize 20
execute if score ppp_global ppp_player_count matches 12..16 run worldborder add 0.03
execute if score ppp_global ppp_player_count matches 12..16 run scoreboard players add ppp_global ppp_wb_subsize 15
execute if score ppp_global ppp_player_count matches 17..33 run worldborder add 0.02
execute if score ppp_global ppp_player_count matches 17..33 run scoreboard players add ppp_global ppp_wb_subsize 10
execute if score ppp_global ppp_player_count matches 34.. run worldborder add 0.01
execute if score ppp_global ppp_player_count matches 34.. run scoreboard players add ppp_global ppp_wb_subsize 5

execute if score ppp_global ppp_wb_subsize matches 1000.. run scoreboard players add ppp_global ppp_wb_size 1
execute if score ppp_global ppp_wb_subsize matches 1000.. run scoreboard players remove ppp_global ppp_wb_subsize 1000

tellraw @a ["", {"text":"Congratulations! ", "color":"light_purple"}, {"selector":"@s", "bold":true , "color":"dark_purple"}, {"text":" Expanded the Border!", "color":"light_purple"}]
title @s actionbar ["", {"text":"Congratulations! ", "color":"light_purple"}, {"text":"You", "bold":true , "color":"dark_purple"}, {"text":" Expanded the Border!", "color":"light_purple"}]
