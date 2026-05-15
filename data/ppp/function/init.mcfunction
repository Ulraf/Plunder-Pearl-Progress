tellraw @a[tag=ppp_debug] "init start"

scoreboard players set ppp_global ppp_player_count 0
scoreboard players set ppp_global ppp_pearl_time 100

tag @a[tag=ppp_counted] remove ppp_counted

kill @e[type=armor_stand,tag=pearl_tracker]
kill @e[type=ender_pearl]

clear @a
execute unless entity 0-0-0-0-0 at @s run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],Invisible:1b,Invulnerable:1b,Marker:1b}

scoreboard players set ppp_global ppp_start 2

tellraw @a[tag=ppp_debug] "init end"
