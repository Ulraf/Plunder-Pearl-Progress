execute at 0-0-0-0-0 run tp 0-0-0-0-0 ~ ~ ~ facing ^1 ^ ^
scoreboard players set ppp_global ppp_curstep 0

execute if score ppp_global ppp_didturn matches 1 run scoreboard players add ppp_global ppp_stepsize 1

scoreboard players add ppp_global ppp_didturn 1
execute if score ppp_global ppp_didturn matches 2 run scoreboard players set ppp_global ppp_didturn 0
