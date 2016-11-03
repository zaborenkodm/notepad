# encoding: utf-8
# (с) 2015 goodprogrammer.ru
# Программа "Блокнот"

# Подключим встроенный в руби класс Date для работы с датами
require 'date'

# Класс Задача, разновидность базового класса "Запись"
class Task < Post
  def initialize
    super # вызываем конструктор родителя

    # потом инициализируем специфичное для Задачи поле - дедлайн
    @due_date = Time.now
  end

  # Этот метод пока пустой, он будет спрашивать 2 строки - описание задачи и дату дедлайна
  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    # спросим у пользователя, до какого числа ему нужно это сделать и подскажем формат, в котором нужно вводить дату
    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003"
    input = STDIN.gets.chomp

    # Для того, чтобы записть дату в удобном формате, воспользуемся методом parse класса Time
    @due_date = Date.parse(input)
  end

  # Массив из трех строк: дедлайн задачи, описание и дата создания
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
