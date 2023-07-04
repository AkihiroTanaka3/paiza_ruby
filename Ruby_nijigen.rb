
# 2次元配列を作る
player = "忍者"
team_a = [player, "戦士", "魔法使い"]
p team_a
puts team_a[1]

team_b = [team_a[0], team_a[1], team_a[2]]
p team_b
puts team_b[0]

team_c = ["勇者", "戦士", "魔法使い"]
team_d = ["盗賊", "忍者", "商人"]
team_e = ["スライム", "ドラゴン", "魔王"]
teams = [team_c, team_d, team_e] #配列の中に配列がある
p teams
p teams[0][0]
p teams[2][1]
p teams[1][2]

# 配列の中身を出力してみよう
array = [["勇者","忍者","武士",],["戦士","僧侶","魔法使い"]]
# この下で、arrayを出力してみよう
p array[0]
p array[1]

# 2次元配列の中身を出力してみよう
array = [["勇者","忍者","武士",],["戦士","僧侶","魔法使い"]]
# この下で、arrayを出力してみよう
p array[1][2]
p array[0][1]

# 2次元配列を作成してみよう
item_1 = ["木の棒", "こん棒", "エクスカリバー"]
item_2 = ["おにぎり", "おにぎり", "むぎ茶"]
item_3 = ["毒消し", "薬草", "アイアンシールド"]

# item_1 ~ 3を、basket配列に代入して、pメソッドで出力してください。
basket = [item_1, item_2, item_3]
p basket

# 2次元配列の基本操作1
teams = [["勇者", "戦士"], ["盗賊", "忍者", "商人"], ["スライム", "ドラゴン", "魔王"], ["魔法使い"]]
p teams
p teams[0]
p teams[0][0]
p teams[0][1]
p teams[0][2]
teams[0][1] = "魔導士" 
p teams
p teams.length
p teams[0].length

# 2次元配列に要素を追加する
basket = [["木の棒", "こん棒", "エクスカリバー"], ["おにぎり", "おにぎり", "むぎ茶"], ["毒消し", "薬草", "アイアンシールド"]]
# ここに、要素を追加するコードを記述する
basket[0][2] = "石斧"
p basket

# 2次元配列の要素の個数を出力する
basket = [["木の棒", "こん棒"], ["おにぎり", "おにぎり", "むぎ茶"], ["アイアンシールド"], ["毒消し","毒消し","毒消し","毒消し"]]
# ここに、要素の個数を出力するコードを記述する
p basket[1].length

# 2次元配列の基本操作 その2
teams = [["勇者", "戦士"], ["盗賊", "忍者", "商人"], ["スライム", "ドラゴン", "魔王"], ["魔法使い"]]
p teams

teams.push(["メタルモンスター", "シルバーモンスター", "ブラックモンスター"]) #配列を追加する
p teams
p teams.length

teams[0].push("レッドドラゴン") #配列0に要素を追加する
p teams
p teams.length
p teams[0].length

teams.delete_at(1) #配列1を削除する
p teams
p teams.length

teams[0].delete_at(1) #配列0に要素1を削除する
p teams
p teams.length
p teams[0].length

# 2次元配列に要素を追加する
basket = [["木の棒", "こん棒", "エクスカリバー"], ["おにぎり", "おにぎり", "むぎ茶"], ["毒消し", "薬草", "アイアンシールド"]]
# ここに、要素を追加するコードを記述する
basket[0].push("石斧")
p basket

# 2次元配列に要素を削除する

basket = [["木の棒", "こん棒", "エクスカリバー"], ["おにぎり", "おにぎり", "むぎ茶"], ["毒消し", "薬草", "アイアンシールド"]]
# ここに、要素を削除するコードを記述する
basket[2].delete_at(2)
p basket

# ループで配列を処理する
team = ["勇者", "戦士", "魔法使い"]
p team
p team[0]
team.each_with_index do |person, i|
    puts "#{i + 1}番目の#{person}が、スライムと戦った"
end

numbers = [3, 1, 4, 1, 5]
results = []
numbers.each do |item|
    results.push(item * 10)
end

p results
results2 = numbers.map do |item|
    item * 100
end
p results2

#配列の中身をループで表示する
enemies = ["スライム", "モンスター", "ゾンビ", "ドラゴン", "魔王"]
# ここに、要素をループで表示するコードを記述する
enemies.each_with_index do |enemy, i|
    puts "#{i + 1}番目の#{enemy}が現れた！"
end

# 各要素を3倍にして新しい配列を作成する
numbers = [12, 34, 56, 78, 90]
# ここに、各要素を3倍にして新しい配列を作成するコードを記述する
numbers2 = numbers.each.map do |i|
    i * 3
end
p numbers2

# 2次元配列をmapで作成する
numbers = Array.new(10, 1)
p numbers
p numbers.length

numbers2 = Array.new(4, Array.new(3, 1))
numbers2[0][1] = 2
p numbers2
p numbers2.length

numbers3 = Array.new(4).map{Array.new(3, 1)}
numbers3[0][1] = 3
p numbers3
p numbers3.length

# Array.newで配列を作成してみよう
text = Array.new(5, "paiza")
p text

# 2次元配列を作成してみよう
number = Array.new(5).map{Array.new(4, 7)}
p number

# ドット絵を表示する
enemy_img = [[0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0],
             [1,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1],
             [1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1],
             [1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1],
             [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
             [0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0],
             [0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1]]
enemy_img.each do |line|
    # p line
    line.each do |dot|
        # print dot
        if dot == 1
            print "#"
        else
            print " "
        end
    end
    puts ""
end

# ドットで文字を出力しよう
letter_A = [[0,0,1,1,0,0],
            [0,1,0,0,1,0],
            [1,0,0,0,0,1],
            [1,1,1,1,1,1],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1]]

# ここに、ドットを表示するコードを記述する
letter_A.each do |line|
    line.each do |dot|
        if dot == 1
            print "@"
        else
            print " "
        end
    end
            puts ""
end

# 3次元配列でドット絵を表示する
enemy_img = [[[0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0],
              [1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1],
              [1,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1],
              [1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1],
              [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
              [0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0],
              [0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1]],
             [[0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0],
              [1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1],
              [1,0,0,1,1,1,0,0,0,0,1,1,1,0,0,1],
              [1,1,0,0,0,0,0,1,1,0,0,0,0,0,1,1],
              [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
              [0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0],
              [0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0]],
             [[0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0],
              [1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1],
              [1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,1],
              [1,1,0,0,0,0,0,0,1,1,0,0,0,0,1,1],
              [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
              [0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0],
              [1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0]]]

enemy_img.each do |img|
    img.each do |line|
        line.each do |dot|
            if dot == 1
                print "#"
            else
                print " "
            end
        end
        puts ""
    end
end

# ドットで文字を出力しよう

letters = [[[0,0,1,1,0,0],
             [0,1,0,0,1,0],
             [1,0,0,0,0,1],
             [1,1,1,1,1,1],
             [1,0,0,0,0,1],
             [1,0,0,0,0,1]],
            [[1,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,0,0,0,0,1],
             [1,1,1,1,1,0]],
            [[0,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,0,0,0,0,0],
             [1,0,0,0,0,0],
             [1,0,0,0,0,1],
             [0,1,1,1,1,0]]]

# ここに、ドットを表示するコードを記述する
letters.each do |dot|
    dot.each do |line|
        line.each do |char|
            if char == 1
                print "@"
            else
                print " "
            end
        end
        puts ""
    end
    puts ""
end

# 2次元配列で地図を表示する
landmap = Array.new(10).map{Array.new(20,"森")}
landmap[0][0] = "城"
landmap[0][19] = "町"
landmap[9][19] = "町"
landmap.each_with_index do |line, i|
    print "#{i}:"
    line.each do |area|
        print area
    end
    puts ""
end

# 複数行テキストに行番号を追加する
text = ["吾輩は猫である",
        "名前はまだ無い",
        "どこで生まれたか",
        "とんと見当がつかぬ"]

#ここに、行番号を表示するコードを記述する
text.each_with_index do |line, i|
    print "#{i + 1}:"
	puts line
end

# 2次元配列で地図を表示する
landmap = Array.new(10).map{Array.new(20,"森")}
landmap[0][0] = "城"
landmap[0][19] = "町"
landmap[9][19] = "町"
landmap.each_with_index do |line, i|
    print "#{i}:"
    line.each_with_index do |area, j|
        if (i % 2 == 0 || j % 3 == 0) && area == "森"
            print "＋"
        else
            print area
        end
    end
    puts ""
end

# 初期の地図
landmap = Array.new(10).map{Array.new(19,"森")}
landmap[2][9] = "城"
landmap[0][0] = "町"
landmap[0][18] = "町"
landmap[9][0] = "町"
landmap[9][18] = "町"

# 地図に道を作る
landmap.each_with_index do |line, i|
    line.each_with_index do |area, j|
        # ここから足りないところを入力してください
        if (i % 9 == 0 || j % 9 == 0) && area == "森"
            print "＋"
        else
            print area
        end
    end
    puts ""
end

# 標準入力から2次元配列
# 入力データ
# 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0
# 1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1
# 1,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1
# 1,1,0,0,0,0,1,1,0,0,0,0,0,0,1,1
# 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0
# 0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0
# 0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1
enemy_img = []
while line = gets
    line.chomp!
    enemy_img.push(line.split(","))
end
# p enemy_img

enemy_img.each do |line|
    line.each do |dot|
        if dot.to_i == 1
            print "#"
        else
            print " "
        end
    end
    puts ""
end

# 標準入力から、2次元配列を読み込む
# 標準入力のデータ
# 0,0,1,1,0,0
# 0,1,0,0,1,0
# 1,0,0,0,0,1
# 1,1,1,1,1,1
# 1,0,0,0,0,1
# 1,0,0,0,0,1

letter_A = []
while line = gets
	line.chomp!
    # ここに、読み込んだデータを配列に追加するコードを記述する
	letter_A.push(line.split(","))
end
p letter_A

# 2次元配列で画像を配置

# 画像用配列
players_img = [
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Empty.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Dragon.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Crystal.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Hero.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Heroine.png"]

# 配置データを読み込み
team = []
while line = gets
    line.chomp!
    team.push(line.split(","))
end
# p team
# 配置に合わせて表示
print "<table>"
team.each do |line|
    print "<tr>"
    # p line
    line.each do |person|
        print "<td><img src= '#{players_img[person.to_i]}'></td>"
    end
    puts "</tr>"
end
puts "</table>"

# 2次元配列で画像を表示する
# 入力データ
# 1,1,1,1,1
# 2,3,3,3,2
# 2,4,4,4,2
# 画像用配列
players_img = [
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Empty.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Dragon.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Crystal.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Hero.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Heroine.png"]

# 配置データを読み込み
team = []
while line = gets
    line.chomp!
    team.push(line.split(","))
end
# p team
# ここから先を入力してください
print "<table>"
team.each do |line|
    print "<tr>"
    line.each do |person|
        print "<td><img src = '#{players_img[person.to_i]}'></td>"
    end
    puts "</tr>"
end
puts "</table>"

# 下記の問題をプログラミングしてみよう！
# 毎年 5 月 1 日に、自分が運営している会社の社員一覧表を作成しています。表は年度ごとに更新され、社員の名前と年齢が載っています。
# ところで、会社のメンバーは昨年度から全く変わらず、社員の誕生日は全員 7 月 7 日だったので、前年度の一覧表の年齢欄をそれぞれ +1 するだけで今年度の表が作れることにパイザ君は気づきました。
# 入力例
# 1
# Yamada 30

count = gets.to_i
for i in 1..count
line = gets.chomp.split(" ")
    name = line[0]
    age = line[1].to_i
    puts "#{name} #{age + 1}"
end