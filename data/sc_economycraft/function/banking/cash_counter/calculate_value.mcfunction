$scoreboard players set denomination ec.TEMP $(v)
$execute store result score cash_counter ec.TEMP run clear @s minecraft:paper[custom_data~{ec:{cash:$(v)}}] 0
scoreboard players operation cash_counter ec.TEMP *= denomination ec.TEMP
scoreboard players operation @s ec.cash_counter += cash_counter ec.TEMP