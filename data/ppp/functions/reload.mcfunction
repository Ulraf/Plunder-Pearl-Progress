scoreboard objectives add ppp_start trigger
scoreboard objectives add ppp_player_count dummy
scoreboard objectives add ppp_pearl_chance dummy

scoreboard players enable @a ppp_start
scoreboard players set ppp_global ppp_player_count 0
tag @a[tag=ppp_counted] remove ppp_counted

tellraw @p ["",{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="},{"text":"\nWelcome to ","color":"light_purple"},{"text":"PlunderPearlProgress","bold":true,"underlined":true,"color":"dark_purple","clickEvent":{"action":"open_url","value":"https://github.com/Ulraf/Plunder-Pearl-Progress/releases"}},{"text":"\nA Challenge Datapack by Ulraf!"},{"text":"\n\nTo initialise the datapack press ","color":"white"},{"text":"HERE","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger ppp_start"}},{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"}]
