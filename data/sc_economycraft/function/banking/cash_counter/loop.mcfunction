#> Break when counter reaches 0
$scoreboard players set i ec.TEMP $(i)
execute if score i ec.TEMP < 0 ec.CONST run return fail

#> Calculate value of current denomination
$function sc_economycraft:banking/cash_counter/calculate_value with storage sc_economycraft:banknotes values[$(i)]

#> Decrease loop counter and repeat
scoreboard players remove i ec.TEMP 1
execute store result storage sc_economycraft:loop_data i int 1 run scoreboard players get i ec.TEMP
function sc_economycraft:banking/cash_counter/loop with storage sc_economycraft:loop_data