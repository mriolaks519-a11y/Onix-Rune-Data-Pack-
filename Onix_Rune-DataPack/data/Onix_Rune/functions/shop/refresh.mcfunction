# Обновление ассортимента магазина
data modify storage onix_rune:tmp pool_size set from storage onix_rune:shop pool length
data modify storage onix_rune:shop current set value []

# Пока просто копируем первые 5 элементов (заглушка)
data modify storage onix_rune:shop current set from storage onix_rune:shop pool[0..4]

# Логирование
tellraw @a ["",{"text":"[Shop] ","color":"gold"},{"text":"Ассортимент обновлён! Используйте /shop для просмотра.","color":"green"}]

# Перезапускаем таймер
schedule function onix_rune:shop/refresh 4h
