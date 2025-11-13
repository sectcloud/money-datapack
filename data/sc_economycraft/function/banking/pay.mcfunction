#> CLEAR: Removing temp info, before doing new operations
    tag @a remove ec.sender
    tag @a remove ec.recipient

#> INIT: Setting temp info
    scoreboard players operation transaction ec.pay.id = @s ec.pay.id
    scoreboard players operation transaction ec.pay.amount = @s ec.pay.amount
    tag @s add ec.sender

#> CLEAR: Clear player triggers 
    function sc_economycraft:banking/reset_payment

#> CHECKING CONDITIONS:
    #> ID not self
        execute if score transaction ec.pay.id = @s ec.ID run return run function sc_economycraft:chat/error/cant_pay_yourself
    #> ID validity check
        execute if score transaction ec.pay.id < 0 ec.CONST run return run function sc_economycraft:chat/error/invalid_id
        execute if score transaction ec.pay.id >= .global ec.ID run return run function sc_economycraft:chat/error/invalid_id
    #> Checking if recipient online
        execute as @a if score @s ec.ID = transaction ec.pay.id run tag @s add ec.recipient
        execute unless entity @a[tag=ec.recipient] run return run function sc_economycraft:chat/error/player_offline
    #> Checking if enough money
        execute if score @s ec.money < transaction ec.pay.amount run return run function sc_economycraft:chat/error/not_enough_money

#> MAIN: Doing transaction
    scoreboard players operation @a[tag=ec.sender] ec.money -= transaction ec.pay.amount
    scoreboard players operation @a[tag=ec.recipient] ec.money += transaction ec.pay.amount
    function sc_economycraft:chat/success/payment