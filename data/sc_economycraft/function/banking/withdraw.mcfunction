scoreboard players operation withdraw ec.TEMP = @s ec.withdraw
scoreboard players set @s ec.withdraw 0

execute if score @s ec.money < withdraw ec.TEMP run return run function sc_economycraft:chat/error/not_enough_money
scoreboard players operation @s ec.money -= withdraw ec.TEMP

function sc_economycraft:chat/success/withdraw

function sc_economycraft:banking/withdraw/start
