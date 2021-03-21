tellraw @a[tag=ppp_debug] "pearl_land start"

execute at @s align xz run tp 0-0-0-0-0 ~.5 ~ ~.5
execute at 0-0-0-0-0 run worldborder center ~ ~
tp @a 0-0-0-0-0
kill @s

tellraw @a[tag=ppp_debug] "pearl_land end"
