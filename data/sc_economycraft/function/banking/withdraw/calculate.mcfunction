$scoreboard players set denomination ec.TEMP $(v)
$data modify storage sc_economycraft:withdraw temp set value {b:$(v), c:0}
execute if score denomination ec.TEMP > withdraw ec.TEMP run return fail
scoreboard players operation remainder ec.TEMP = withdraw ec.TEMP
scoreboard players operation remainder ec.TEMP /= denomination ec.TEMP
execute store result storage sc_economycraft:withdraw temp.c int 1 run scoreboard players get remainder ec.TEMP
execute if score remainder ec.TEMP matches 1.. run function sc_economycraft:banking/get_cash with storage sc_economycraft:withdraw temp 
scoreboard players operation withdraw ec.TEMP %= denomination ec.TEMP