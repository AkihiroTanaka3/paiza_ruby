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