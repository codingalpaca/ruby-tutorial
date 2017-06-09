# 1 -> 檢視成績
# 2 -> 新增成績
# 3 -> 刪除成績
# 4 -> 結束程式

scores = [90, 80, 85]

puts '輸入 1 檢視成績，2 新增成績，3 刪除成績，4 結束程式'

while true
  print ' > '
  command = gets.chomp.to_i

  if command == 1
    scores.each do |score|
      puts score
    end
  elsif command == 2
    print '請出入要新增的成績：'
    scores.push gets.chomp.to_i
  elsif command == 3
    print '請問要刪除第幾個成績：'
    scores.delete_at gets.chomp.to_i - 1
  elsif command == 4
    puts '程式結束！'
    break
  end
end
