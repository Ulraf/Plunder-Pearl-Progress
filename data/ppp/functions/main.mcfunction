execute unless score hcexpand hce_start matches 1 unless entity @a[scores={hce_start=1}] run scoreboard players enable @a hce_start
execute as @p[scores={hce_start=1}] at @s run function hcexpand:init
execute if score hcexpand hce_start matches 1 run function hcexpand:game_loop
