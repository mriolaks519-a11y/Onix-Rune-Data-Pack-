# =====================================================
# Инициализация валют
# =====================================================
scoreboard objectives add coins dummy
scoreboard objectives add onix dummy

# =====================================================
# Инициализация хранилищ (если ещё не созданы)
# =====================================================
data modify storage onix_rune:shop pool set value []
data modify storage onix_rune:shop current set value []
data modify storage onix_rune:market lots set value []
data modify storage onix_rune:market orders set value []
data modify storage onix_rune:clans list set value []
data modify storage onix_rune:logs transactions set value []

# =====================================================
# Заполнение пула предметов (пример)
# =====================================================
# Добавляем несколько предметов с ценами
# Формат: {id:"minecraft:stone", price_coins:10, price_onix:0}
data modify storage onix_rune:shop pool append value {id:"minecraft:stone", price_coins:10, price_onix:0}
data modify storage onix_rune:shop pool append value {id:"minecraft:dirt", price_coins:5, price_onix:0}
data modify storage onix_rune:shop pool append value {id:"minecraft:cobblestone", price_coins:8, price_onix:0}
data modify storage onix_rune:shop pool append value {id:"minecraft:oak_log", price_coins:20, price_onix:0}
data modify storage onix_rune:shop pool append value {id:"minecraft:iron_ingot", price_coins:50, price_onix:1}
data modify storage onix_rune:shop pool append value {id:"minecraft:gold_ingot", price_coins:100, price_onix:2}
data modify storage onix_rune:shop pool append value {id:"minecraft:diamond", price_coins:500, price_onix:5}
# ... добавьте ещё 20-30 предметов по своему усмотрению

# =====================================================
# Первое обновление магазина и запуск цикла
# =====================================================
function onix_rune:shop/refresh
schedule function onix_rune:shop/refresh 4h

# =====================================================
# Приветственное сообщение
# =====================================================
tellraw @a ["",{"text":"[Onix Rune] ","color":"gold"},{"text":"Датапак загружен! Магазин готов.","color":"green"}]
