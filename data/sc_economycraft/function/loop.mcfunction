#> Setups default values for scoreboards for player who first joined the world
    function sc_economycraft:utils/setup_scoreboards

#> Enable triggers for all players
    scoreboard players enable @a ec.pay
    scoreboard players enable @a ec.pay.id
    scoreboard players enable @a ec.pay.amount
    scoreboard players enable @a ec.deposit
    scoreboard players enable @a ec.withdraw

#> Setting ec.ID for new players
    execute as @a[tag=!ec.ID] run function sc_economycraft:utils/set_id

#> TRIGGERS:
    #> Payment process
        execute as @a[scores={ec.pay=1..}] run function sc_economycraft:banking/prompt_payment
        execute as @a[scores={ec.pay.amount=1..}] unless score @s ec.pay.id = -1 ec.CONST run function sc_economycraft:banking/pay

    #> Deposit/withdraw process
        execute as @a[scores={ec.deposit=1..}] run function sc_economycraft:banking/deposit
        execute as @a[scores={ec.withdraw=1..}] run function sc_economycraft:banking/withdraw

#> Timer
    scoreboard players remove @a[scores={ec.timeout=1..}] ec.timeout 1
    execute as @a[scores={ec.timeout=0}, tag=ec.payment_prompted] run function sc_economycraft:banking/timeout

#> SNEAK_CHECKER:
    execute as @a[scores={ec.SNEAK=1..}, nbt={SelectedItem:{components:{"minecraft:custom_data":{ec:{is_cash:true}}}}}] run function sc_economycraft:chat/info/money_available
    scoreboard players set @a ec.SNEAK 0