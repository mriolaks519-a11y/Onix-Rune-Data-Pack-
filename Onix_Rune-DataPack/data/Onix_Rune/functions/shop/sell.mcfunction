# Продажа камня (пример)
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run scoreboard players add @s coins 10
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run clear @s minecraft:stone 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run tellraw @s ["",{"text":"[Shop] ","color":"gold"},{"text":"Вы продали камень за 10 coins.","color":"green"}]
execute unless entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run tellraw @s ["",{"text":"[Shop] ","color":"gold"},{"text":"У вас нет камня!","color":"red"}]
