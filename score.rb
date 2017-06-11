# 1 -> 檢視成績
# 2 -> 新增成績
# 3 -> 刪除成績
# 4 -> 結束程式

records = [
  { :name => 'John', :score => 90 },
  { :name => 'Alpaca', :score => 100 }
]

puts '輸入 1 檢視成績，2 新增成績，3 刪除成績，4 結束程式'

while true
  print ' > '
  command = gets.chomp.to_i

  if command == 1
    records.each do |record|
      puts record[:name] + '：' + record[:score].to_s + '分'
    end
  elsif command == 2
    record = {}

    print '請輸入學生的名字：'
    record[:name] = gets.chomp

    print '請出入要新增的成績：'
    record[:score] = gets.chomp.to_i

    records.push record
  elsif command == 3
    print '請問要刪除第幾個紀錄：'
    records.delete_at gets.chomp.to_i - 1
  elsif command == 4
    puts '程式結束！'
    break
  end
end
