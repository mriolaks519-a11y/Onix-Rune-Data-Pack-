# =====================================================
# Обновление ассортимента магазина
# Выбирает 5 случайных предметов из пула
# =====================================================

# Получаем размер пула
data modify storage onix_rune:tmp pool_size set from storage onix_rune:shop pool length

# Очищаем текущий список
data modify storage onix_rune:shop current set value []

# Выбираем 5 случайных индексов (0 .. pool_size-1)
# Используем генерацию случайного числа через scoreboard
scoreboard players random @s shop_random 0 1000  # не совсем точно, но для демонстрации

# Простой способ: берём первые 5 элементов из перемешанного пула
# В реальности нужно использовать случайную перестановку, но для простоты оставим так.
# Позже я покажу более надёжный способ.

# Пока просто скопируем первые 5 элементов из пула (заглушка)
data modify storage onix_rune:shop current set from storage onix_rune:shop pool[0..4]

# В будущем заменим на реальную случайную выборку

# Логирование
tellraw @a ["",{"text":"[Shop] ","color":"gold"},{"text":"Ассортимент обновлён! Используйте /shop для просмотра.","color":"green"}]

# Перезапускаем таймер
schedule function onix_rune:shop/refresh 4h
