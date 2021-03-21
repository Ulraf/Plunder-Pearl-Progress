function ppp:find_tree/find_ground
execute at 0-0-0-0-0 align xz run tp ~.5 ~ ~.5
execute at 0-0-0-0-0 align xz run worldborder center ~.5 ~.5
execute at 0-0-0-0-0 run setworldspawn ~ ~ ~
execute at 0-0-0-0-0 run tp @a ~ ~ ~
worldborder set 1
scoreboard players set ppp_global ppp_wb_size 1
scoreboard players set ppp_global ppp_wb_subsize 0
scoreboard players set ppp_global ppp_start 2
clear @a
gamemode survival @a
time set day
