scoreboard players operation @s[tag=!ec.payment_prompted] ec.timeout = timeout_duration ec.SETTINGS
execute if entity @s[tag=!ec.id_prompted] run function sc_economycraft:chat/prompt/player_id
execute if score @s[tag=!ec.amount_prompted] ec.pay.id matches 0.. run function sc_economycraft:chat/prompt/amount
tag @s add ec.payment_prompted