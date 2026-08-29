# Инициализация валют
scoreboard objectives add coins dummy
scoreboard objectives add onix dummy

# Инициализация хранилищ (если их нет)
data modify storage onix_rune:shop items set value []
data modify storage onix_rune:market lots set value []
data modify storage onix_rune:clans list set value []

# Запуск периодических задач (например, обновление магазина каждые 4 часа)
schedule function onix_rune:shop/refresh 4h

# Сообщение в лог
tellraw @a ["",{"text":"[Onix Rune] ","color":"gold"},{"text":"Датапак загружен!","color":"green"}]
