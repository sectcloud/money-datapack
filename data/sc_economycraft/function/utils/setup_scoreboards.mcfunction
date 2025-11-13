execute as @a unless score @s ec.pay.id matches -2147483648..2147483647 run scoreboard players set @s ec.pay.id -1
execute as @a unless score @s ec.pay.amount matches -2147483648..2147483647 run scoreboard players set @s ec.pay.amount 0
execute as @a unless score @s ec.pay matches -2147483648..2147483647 run scoreboard players set @s ec.pay 0