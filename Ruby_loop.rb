# for inによるループ処理

# for カウンタ変数 in 繰り返す範囲
#     繰り返し処理
# end 
for i in 5..10  #0, 1, 2,  ... 4
    puts "hello world #{i}" #繰り返し処理
end
puts "last #{i}"
# for in によるループ処理
for i in 0..4
    puts "ハロー、paizaラーニング"
end
# for in によるループ処理
for i in 0..15
    puts i
end
# for in によるループ処理
for i in 1..12
    puts "#{i}月"
end

# whileによるループ処理 1

i = 1  # カウンタ変数を初期化
while i <= 10  # while 条件式　1, 2, 3, 4 ... 11
    puts i #繰り返し処理
    i = i + 1  #カウンタ変数を更新
end
puts "last #{i}"
# whileによるループ処理
i = 1
while i <= 5
    puts "ハロー、paizaラーニング"
    i = i + 1
end
# whileによるループ処理
i = 0
while i <= 15
    puts i
    i = i + 1
end
# whileによるループ処理
i = 2
while i <= 10
    puts i
    i = i + 2
end
# whileによるループ処理

hp = 30	# カウンタ変数を初期化
while hp > 0
    hit = rand(1..10)
    puts "スライムに、#{hit}のダメージを与えた！"  # 繰り返し処理
    hp -= hit  # カウンタ変数を更新
end
puts "スライムを倒した"
# whileによるループ処理
i = 5
while i > 0
    puts i
    i -= 1
end
# whileによるループ処理
i = 20
while i >= 10
    puts i
    i -= 1
end
# whileによるループ処理
i = 19
while i > 10
    puts i
    i -= 2
end

# 年齢入力のプルダウン作成

# puts "<select name='age'>"
# puts "<option>1才</option>"
# puts "<option>2才</option>"
# puts "</select>"

puts "<select name='age'>"
for age in 1..100
    puts "<option>#{age}歳</option>"
end
puts "</select>"

# HTMLによる箇条書き
puts "<ul>"
for number in 1..100
    puts "<li>#{number}</li>"
end
puts "</ul>"

# getsによる標準入力

line = gets
puts "hello #{line}"
# getsによる標準入力

line = gets.to_i
puts line * 2
# 標準入力
puts gets
# 標準入力
line = gets.to_i
puts line * 100