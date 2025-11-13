tellraw @a {type:"translatable", translate:"chat.scec.prompt.enteramount", color:"blue", click_event:{action:"suggest_command", command:"/trigger ec.pay.amount set "}}
tag @s add ec.amount_prompted
scoreboard players operation @s ec.timeout = timeout_duration ec.SETTINGS