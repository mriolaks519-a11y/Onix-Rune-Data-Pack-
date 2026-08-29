# Здесь будет логика обновления списка товаров
# Пока просто перезапускаем таймер
schedule function onix_rune:shop/refresh 4h
tellraw @a ["",{"text":"[Shop] ","color":"gold"},{"text":"Ассортимент магазина обновлён!","color":"green"}]
