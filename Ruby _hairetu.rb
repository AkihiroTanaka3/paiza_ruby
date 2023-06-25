# 配列を作成する

player_1 = "戦士"
player_2 = "魔法使い"
puts player_1
puts player_2

team = ["勇者", "魔法使い", 100 , player_1]
p team

# 配列の中身を出力してみよう

array = ["戦士","侍","僧侶","魔法使い"]
# この下で、arrayを出力してみよう
p array

# 指定の文字を配列にする

item = ["ロングソード", "ブレードソード", "エクスカリバー"]
p item

# 変数で、配列に代入する

player_1 = "勇者"
player_2 = "魔法使い"
player_3 = "戦士"

# player_1 ~ 3を、配列に代入して、pメソッドで出力してください。
team = [player_1, player_2, player_3]
p team

# 配列の要素を取り出す

num = 0
team = ["勇者", "魔法使い"]
p team
puts team[num + 1]

# 配列から特定要素を取り出す

team = ["勇者", "戦士", "侍", "忍者", "魔法使い"]
# teamの1番左の要素をputsメソッドで出力する
puts team[0]


team = ["戦士", "戦士", "侍", "忍者", "魔法使い"]
# teamの3番目の要素をputsメソッドで出力する
puts team[2]

# 配列の要素を操作する

team = ["勇者", "魔法使い"]
p team
puts team[1]
puts team.length
team.push("戦士")
p team
puts team.length
team[2] = "ドラゴン"
p team
puts team.length
team[5] = "盗賊"
p team
puts team.length
team.delete_at(2)
p team
puts team.length

# 配列に要素を追加する
weapon = ["木の棒", "鉄の棒", "鉄の剣", "銅の剣"]
# ここに、要素を追加するコードを記述する
weapon.push("石斧")
p weapon

# 配列の要素を上書きする
weapon = ["木の棒", "鉄の棒", "鉄の剣", "サビた剣"]
# ここに、要素を上書きするコードを記述する
weapon[3] = "石斧" 
p weapon

# 配列の要素を削除する
weapon = ["木の棒", "鉄の棒", "鉄の剣", "銅の剣"]
# ここに、要素を削除するコードを記述する
weapon.delete_at(2)
p weapon

# 配列の要素の個数を出力する
weapon = ["木の棒", "鉄の棒", "鉄の剣", "銅の剣", "石斧", "エクスカリバー"]
# ここに、要素数を出力するコードを記述する
puts weapon.length

# ループで配列を操作する
team = ["勇者", "戦士", "魔法使い", "盗賊"]
p team
# puts team[0]
puts "<select name='job'>" 
for job in team
    puts "<option>#{job}</option>"
end
puts "</option>"

#配列の中身をループで表示する

enemy = ["スライム", "モンスター", "ゾンビ", "ドラゴン", "魔王"]
# ここに、要素をループで表示するコードを記述する
for i in enemy
    puts "#{i}が現れた"
end

# 要素を合計を計算する
numbers = [12, 34, 56, 78, 90]
sum = 0
for num in numbers
	# ここに、合計を計算するコードを記述する
sum += num
end
puts sum
