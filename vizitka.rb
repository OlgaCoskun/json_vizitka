require 'json'

# Читаем содержимое файла vizitka.json
file = File.read("#{__dir__}/vizitka.json", encoding: 'UTF-8')

# Делаем ассоциативный массив из содержимого файла с помощью метода JSON.parse
# и записываем его в переменную info.
card = JSON.parse(file)

puts "#{card['my_name']} #{card['my_surname'][0]}. #{card['my_third_name']}"
puts "#{card['my_cep_telefon']}, #{card['my_email']}"
puts card['skills']