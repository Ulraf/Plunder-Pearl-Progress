scoreboard objectives add ppp_start dummy
scoreboard objectives add ppp_player_count dummy
scoreboard objectives add ppp_pearl_chance dummy
scoreboard objectives add ppp_pearl_time dummy
scoreboard objectives add ppp_wb_size dummy
scoreboard objectives add ppp_wb_subsize dummy

tellraw @a ["",{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="},{"text":"\nWelcome to ","color":"light_purple"},{"text":"PlunderPearlProgress","bold":true,"underlined":true,"color":"dark_purple","clickEvent":{"action":"open_url","value":"https://github.com/Ulraf/Plunder-Pearl-Progress/releases"}},{"text":"\nA Challenge Datapack by Ulraf!"},{"text":"\n\nTo initialise the datapack press ","color":"white"},{"text":"HERE","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set ppp_global ppp_start 1"}},{"text":"\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"}]
