# if文による条件分岐
number = rand(1..3)
puts "あなたの順位は#{number}位です"
if number == 1 
    puts "おめでとう！" # 式が成り立った時の処理
else
    puts "残念！"
end
# if文による条件分岐
number = rand(1..5)
puts "あなたの順位は#{number}位です"
if number == 1
    puts "おめでとう"# 式が成り立った時の処理
else
    puts "あと少し"# 式が成りたたなかった時の処理
end
# if文による条件分岐
number = rand(1..3) * 100
puts "あなたの得点は#{number}ポイントです"
if number == 300
    puts "おめでとう！"
end
# if文による条件分岐
number = rand(1..3) * 100
puts "あなたの得点は#{number}ポイントです"
if number == 300
    puts "おめでとう！"
else
    puts "ざんねん！"
end
# if文による条件分岐
number = rand(1..5)
puts "あなたの順位は#{number}位です"
if number == 1
    puts "おめでとう！" # １位だった時の処理
elsif number == 2
    puts "あと少し！"
else
    puts "よくがんばったね" # それ以外だったときの処理
end
age = rand(18..22) # 何才かを$ageに18~22をランダムで代入
print "#{age}才は"
if age < 20
    print "飲酒不可" # 条件が成り立ったときの処理
else age >= 20
    print "飲酒可能" # それ以外だったときの処理
end
place = rand(1..12) # 何位かを$placeに1~12をランダムで代入
print "#{place}位"
if place < 6
    # 条件が成り立ったときの処理
    puts "入賞"
else
    # それ以外だったときの処理
    puts "入賞圏外"
end
age = rand(15..25) # 何才かを$ageに15~25をランダムで代入
print "#{age}才"
if age >= 20
  # 条件が成り立ったときの処理
  puts "成人です"
else
  # それ以外だったときの処理
  puts "未成年です"
end
# if文による条件分岐
omikuji = rand(1..100)
if omikuji >= 30
  puts "omikujiの中身は#{ omikuji }なので大吉"
else
  puts "omikujiの中身は#{ omikuji }なので大凶"
end
dice = rand(1..6)
puts "サイコロは#{dice}"
if dice > 3
    puts "スライムの攻撃をかわした"
else
    puts "スライムから10のダメージを受けた"
end
seireki = rand(1926..1988)	# 西暦年
print "西暦#{seireki}年は"

# 昭和年を計算する
showa = seireki - 1925
# 昭和年を出力する
puts "昭和#{showa}年です。"
# 順位に合わせてメッセージを表示する
number = rand(1..10)
puts "あなたの順位は#{number}位です"

##　ここにifを追加する
if number > 1 && number < 6
    puts "あと少し！"
end

# 距離に合わせてメッセージを表示する
distance = rand(1..30)
puts "あなたの距離は#{distance}メートルです"

##　ここにifを追加する
if distance <= 9 || distance >= 21
    puts "セーフ！"
end

# 順位に合わせてメッセージを表示する
number = rand(1..10)
puts "あなたの順位は#{number}位です"

flag = number <=3
##　ここにifを追加する
if flag == true
    puts "入賞おめでとう！"
end
# 文字列を数値に変換しよう
number = "0.08"
p number.to_f

number = 0.08
p number.to_i
p number.to_s

# 肉の量り売り
price = 128
weight = 300
amount = ((price * weight) / 100).to_i
puts "100グラム#{price}円の肉、#{weight}グラムは、#{amount}円です。"

# 税込価格を計算する
price = 3500
puts "定価 : #{price}円"

discount_price = (price * 0.85).to_i
puts "割引価格は、#{discount_price}円です。"

amount = (discount_price * 1.08).to_i
puts "税込価格は、#{amount}円です。"

person = 5
puts "人数が、#{person}人の場合、"

amount_per_person = amount / person
remainder = amount % person
puts "一人当たり#{amount_per_person}円、余りは#{remainder}円です。"