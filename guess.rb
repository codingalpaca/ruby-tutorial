# 1. 產生一個數字
# 2. 讓使用者猜
# 3. 如果猜對了 -> 輸出 '猜對了'
#    不然       -> 輸出 '猜錯了'

number = Random.rand(99) + 1

while true
  print '請猜一個 1 ~ 100 之間的數字：'
  guess = gets.chomp.to_i

  if guess == number
    puts '你猜對了，答案是 ' + number.to_s
    break
  elsif guess > number
    puts '猜太大了！'
  else
    puts '猜太小了！'
  end
end
