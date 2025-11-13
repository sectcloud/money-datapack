# Default banknote denominations
# All value must be unique and in ascending order
data modify storage sc_economycraft:banknotes values set value [{v:1}, {v:10}, {v:50}, {v:100}, {v:200}, {v:500}, {v:1000}, {v:5000}]
data modify storage sc_economycraft:banknotes length_minus_one set value 7

# Default timeout duration (in ticks)
scoreboard players set timeout_duration ec.SETTINGS 600