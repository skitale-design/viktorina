# encoding: utf-8
# (с) 2015 goodprogrammer.ru
# Курс «Настоящее программирование для всех 2» (продвинутый блок)

# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

require 'rexml/document'

# Прочитать данные из файла
current_path = File.dirname(__FILE__)
path_to_file = current_path + "/q_and_a.xml"
file = File.new(path_to_file, "r:UTF-8")
doc = REXML::Document.new(file)

# Вывести вопрос в цикле
10.times do |item|
  xpath = "questions/question[#{item + 1}]/answers"
  # puts xpath
  puts
  puts doc.elements["questions/question[#{item + 1}]/question_text"].text + "\n\n"
  doc.elements.each("#{xpath}/answer") {|variable| puts "--> #{variable.text}\n\n"}
  # puts doc.elements["questions/question[#{item + 1}]/answer[@right='true']"].text
  print "Введите номер ответа:"
  user_input = STDIN.gets.to_i
  if user_input == doc.elements["questions/question[#{item + 1}]/answer[@right='true']"].text.to_i
    puts "\nВерно!"
  else
    puts "\nНе верно :("
    puts "\nПравильный ответ: #{doc.elements["questions/question[#{item + 1}]/explanation"].text}"
  end
end

#   i += 1
#   puts " #{i}. #{variable.text}"
#   #   if variable.attribute('right') == 'true'
# end
# Запросить выбор пользователя
