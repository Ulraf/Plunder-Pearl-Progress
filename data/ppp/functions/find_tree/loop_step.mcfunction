execute at 0-0-0-0-0 run tp 0-0-0-0-0 ^ ^ ^1
scoreboard players add ppp_global ppp_curstep 1
execute if score ppp_global ppp_curstep = ppp_global ppp_stepsize run function ppp:find_tree/step_turn

function ppp:find_tree/find_ground
execute at 0-0-0-0-0 if block ~ ~-1 ~ #leaves run function ppp:find_tree/find_log_below
execute at 0-0-0-0-0 unless block ~ ~-1 ~ #logs run function ppp:find_tree/loop_step