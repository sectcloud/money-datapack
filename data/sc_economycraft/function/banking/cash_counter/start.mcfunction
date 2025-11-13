scoreboard players set @s ec.cash_counter 0
data modify storage sc_economycraft:loop_data i set from storage sc_economycraft:banknotes length_minus_one
function sc_economycraft:banking/cash_counter/loop with storage sc_economycraft:loop_data