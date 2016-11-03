# encoding: utf-8
# (с) 2015 goodprogrammer.ru
# Программа "Блокнот"

# Класс Ссылка, разновидность базового класса "Запись"
class Link < Post

  def initialize
    super # вызываем конструктор родителя
    @url = '' # инициализируем специфичное для ссылки поле
  end

  # Спрашиваем 2 строки - адрес ссылки и описание
  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    # И описание ссылки (одной строчки будет достаточно)
    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  # Массив из трех строк: адрес ссылки, описание и дата создания
  # Будет реализован в след. уроке
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end
