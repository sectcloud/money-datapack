#> Break when counter reaches 0
$scoreboard players set i ec.TEMP $(i)
execute if score i ec.TEMP < 0 ec.CONST run return fail

#> Calculate of current denomination
$function sc_economycraft:banking/withdraw/calculate with storage sc_economycraft:banknotes values[$(i)]

#> Decrease loop counter and repeat
scoreboard players remove i ec.TEMP 1
execute store result storage sc_economycraft:loop_data i int 1 run scoreboard players get i ec.TEMP
function sc_economycraft:banking/withdraw/loop with storage sc_economycraft:loop_data