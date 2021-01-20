execute at 0-0-0-0-0 unless block ~ ~ ~ minecraft:air run tp 0-0-0-0-0 ~ ~1 ~
execute at 0-0-0-0-0 if block ~ ~-1 ~ minecraft:air run tp 0-0-0-0-0 ~ ~-1 ~

execute at 0-0-0-0-0 unless block ~ ~ ~ minecraft:air run function ppp:find_tree/find_ground
execute at 0-0-0-0-0 if block ~ ~-1 ~ minecraft:air run function ppp:find_tree/find_ground