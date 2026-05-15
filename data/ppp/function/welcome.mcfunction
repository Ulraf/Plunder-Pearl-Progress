scoreboard players set @s ppp_leave 0

tellraw @s {"text":"","extra":[{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="},{"text":"\nWelcome to ","color":"light_purple"},{"text":"PlunderPearlProgress","bold":true,"underlined":true,"color":"dark_purple","click_event":{"action":"open_url","url":"https://github.com/Ulraf/Plunder-Pearl-Progress"}},{"text":"\nA Challenge Datapack by Ulraf!"}]}

execute unless score ppp_global ppp_start matches 1.. run scoreboard players enable @s ppp_start
execute unless score ppp_global ppp_start matches 1.. run tellraw @s {"text":"","extra":[{"text":"\nA Minecraft datapack where you start in a 1 by 1 worldboarder and attempt to finish the game!"},{"text":"\n\nTo initialise the datapack press ","color":"white"},{"text":"HERE","bold":true,"underlined":true,"color":"blue","click_event":{"action":"run_command","command":"/trigger ppp_start"}},{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"}]}
execute if score ppp_global ppp_start matches 1.. run tellraw @s ["",{"text":"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"}]
