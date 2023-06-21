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