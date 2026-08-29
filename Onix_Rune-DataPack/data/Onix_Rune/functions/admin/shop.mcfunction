# /admin_shop_additem <item_id> <price_coins> [price_onix]
# Пример: /admin_shop_additem minecraft:emerald 200 3

# Для работы нужны макросы, но пока можно просто изменять storage вручную.
# Я покажу простой способ добавления через команду:
data modify storage onix_rune:shop pool append value {id:"$(item)", price_coins:$(coins), price_onix:$(onix)}
tellraw @s ["",{"text":"[Admin] ","color":"light_purple"},{"text":"Предмет добавлен в пул.","color":"green"}]
