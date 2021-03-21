execute store result score ppp_global ppp_pearl_chance run time query gametime
scoreboard players operation ppp_global ppp_pearl_chance %= ppp_global ppp_player_count
execute if score ppp_global ppp_pearl_chance matches 0 run give @s minecraft:ender_pearl
execute if score ppp_global ppp_pearl_chance matches 0 at @s run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1
execute if score ppp_global ppp_pearl_chance matches 0 at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1
execute if score ppp_global ppp_pearl_chance matches 0 run title @s actionbar ["", {"text":"WOW! ", "color":"light_purple"}, {"text":"You", "bold":true , "color":"dark_purple"}, {"text":" found a magical teleportation orb!", "color":"light_purple"}]
execute if score ppp_global ppp_pearl_chance matches 0 run tellraw @a ["", {"text":"WOW! ", "color":"light_purple"}, {"selector":"@s", "bold":true , "color":"dark_purple"}, {"text":" found a magical teleportation orb!", "color":"light_purple"}]
