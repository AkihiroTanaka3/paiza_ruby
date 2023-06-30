
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
