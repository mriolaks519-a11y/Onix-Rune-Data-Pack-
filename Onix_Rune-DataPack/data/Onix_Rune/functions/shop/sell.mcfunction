# =====================================================
# Продажа предмета: /shop sell <item>
# Проверяем, есть ли предмет в инвентаре, и начисляем деньги
# =====================================================

# Проверка количества предметов у игрока
# Сначала получаем ID предмета из аргумента (например, через макрос)
# Для примера продаём камень (minecraft:stone)

# Проверяем наличие камня (счётчик)
clear @s minecraft:stone 0  # 0 - просто проверка, ничего не удаляет
# Если есть, то количество сохраняется в scoreboard
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run scoreboard players add @s coins 10
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run clear @s minecraft:stone 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run tellraw @s ["",{"text":"[Shop] ","color":"gold"},{"text":"Вы продали камень за 10 coins.","color":"green"}]
execute unless entity @s[nbt={Inventory:[{id:"minecraft:stone"}]}] run tellraw @s ["",{"text":"[Shop] ","color":"gold"},{"text":"У вас нет камня!","color":"red"}]
