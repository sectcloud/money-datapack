#> Removes all scoreboards
scoreboard objectives remove ec.pay.id
scoreboard objectives remove ec.pay.amount
scoreboard objectives remove ec.pay
scoreboard objectives remove ec.deposit
scoreboard objectives remove ec.withdraw
scoreboard objectives remove ec.CONST
scoreboard objectives remove ec.ID
scoreboard objectives remove ec.SNEAK
scoreboard objectives remove ec.money
scoreboard objectives remove ec.cash_counter
scoreboard objectives remove ec.timeout

#> Remove all Tags from all online players
tag @s remove ec.ID
tag @s remove ec.sender
tag @s remove ec.recipient
tag @s remove ec.payment_prompted
tag @s remove ec.id_prompted
tag @s remove ec.amount_prompted