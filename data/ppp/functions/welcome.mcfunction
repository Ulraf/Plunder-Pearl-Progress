scoreboard players set @s ppp_leave 0

tellraw @s ["",{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="},{"text":"\nWelcome to ","color":"light_purple"},{"text":"PlunderPearlProgress","bold":true,"underlined":true,"color":"dark_purple","clickEvent":{"action":"open_url","value":"https://github.com/Ulraf/Plunder-Pearl-Progress/releases"}},{"text":"\nA Challenge Datapack by Ulraf!"}]

execute unless score ppp_global ppp_start matches 1.. run scoreboard players enable @s ppp_start
execute unless score ppp_global ppp_start matches 1.. run tellraw @s ["",{"text":"\nA Challenge Datapack by Ulraf!"},{"text":"\n\nTo initialise the datapack press ","color":"white"},{"text":"HERE","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger ppp_start"}},{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"}]
execute if score ppp_global ppp_start matches 1.. run tellraw @s ["",{"text":"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"}]
