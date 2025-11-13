function sc_economycraft:banking/cash_counter/start
clear @s paper[custom_data~{ec:{is_cash:true}}]
scoreboard players operation @s ec.money += @s ec.cash_counter
function sc_economycraft:chat/success/deposit
scoreboard players set @s ec.deposit 0