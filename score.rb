# 1 -> 檢視成績
# 2 -> 新增成績
# 3 -> 刪除成績
# 4 -> 結束程式

require 'colorize'
require_relative 'record'
require_relative 'method'

records = [
  Record.new('John', 90),
  Record.new('Alpaca', 100)
]

puts '輸入 1 檢視成績，2 新增成績，3 刪除成績，4 結束程式'.colorize(:yellow)

while true
  print ' > '
  command = gets.chomp.to_i

  if command == 1
    display records
  elsif command == 2
    create records
  elsif command == 3
    delete records
  elsif command == 4
    puts '程式結束！'
    break
  end
end
