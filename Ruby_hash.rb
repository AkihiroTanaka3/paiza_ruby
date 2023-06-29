# ハッシュを作る
# 配列のおさらい
enemy_array = ["スライム", "モンスター", "ドラゴン"]
p enemy_array
puts enemy_array[0]

# ハッシュの具体例
enemy_hash = {"ザコ" => "スライム" , "中ボス" => "ドラゴン" , "ラスボス" => "魔王"}
p enemy_hash
puts enemy_hash["中ボス"]
level = "ラスボス"
puts enemy_hash[level]

# 指定の文字をハッシュにする
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
p skills
# ハッシュの中身を出力してみよう
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュを出力してみよう
p skills

# ハッシュの特定の値を出力してみよう
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュから出力してみよう
puts skills["職業"]

# ハッシュの基本操作
# ハッシュのおさらい
enemies = {"ザコ" => "スライム", "中ボス" => "ドラゴン", "ラスボス" => "魔王"}
p enemies
puts enemies["中ボス"]
puts enemies.length

enemies["ザコ2"] = "メタルモンスター"
p enemies
puts enemies.length

enemies["中ボス"] = "レッドドラゴン"
p enemies
puts enemies.length

enemies.delete("ザコ")
p enemies
puts enemies.length

# ハッシュの長さを出力する
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュの長さを出力してみよう
puts skills.length

# ハッシュに要素を追加する
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュにデータを追加してみよう
skills["属性"] = "炎"
p skills

# ハッシュの要素を削除する
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
p skills
# この下で、ハッシュを削除してみよう
skills.delete("体力")
p skills

# ハッシュをループで処理する
enemies = {"ザコ" => "スライム", "中ボス" => "ドラゴン", "ラスボス" => "魔王"}
p enemies
puts enemies["中ボス"]

enemies.each_value do |enemy|
    puts "#{enemy}が、現れた！"
end

enemies.each do |rank, enemy|
    puts "#{rank}の#{enemy}が、現れた！"
end

# ループでハッシュのキーと値を出力しよう
skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュの値をループで出力してみよう
skills.each_value do |i|
    puts i
end

# ループでハッシュのキーと値を出力しよう

skills = {"職業" => "戦士", "体力" => 100, "魔法力" => 200, "ゴールド" => 380}
# この下で、ハッシュの値をループで出力してみよう
skills.each do |key, i|
    puts "#{key}は#{i}です"
end

# ループで合計を計算しよう
points = {"国語" => 70, "算数" => 35, "英語" => 52}
sum = 0
# この下で、ハッシュの値の合計をループで計算してみよう
points.each_value do |point|
sum += point
end
puts sum

# 配列の整列
items = ["イージスシールド", "ウィンドスピア", "アースブレイカー", "イナズマハンマー"]
p items

p items.sort # あいうえお順にソート
p items.sort.reverse # 逆順

items2 = ["4.イージスシールド", "2.ウィンドスピア", "3.アースブレイカー", "1.イナズマハンマー"]
p items2.sort #数字順にソート

items3 = ["鉄壁シールド", "風神スピア", "大地ブレイカー", "稲妻ハンマー"]
p items3.sort #漢字は文字コードの順番

#配列を昇順にソートする
apples = [310, 322, 292, 288, 300, 346]
# ここに、要素をソートして表示するコードを記述する
p apples.sort

#配列を逆順にソートする
apples = [310, 322, 292, 288, 300, 346]
# ここに、要素をソートして、逆順に整列し、表示するコードを記述する 
p apples.sort.reverse

# 英単語リストをアルファベット順に並べる
words = ["pumpkin", "orange", "apple", "carrot", "onion"]
# ここに、要素をソートして表示するコードを記述する
p words.sort

# ハッシュの整列
items = {"イージスシールド" => 40, "ウィンドスピア" => 12, "アースブレイカー" => 99}
p items.sort
p items.sort.to_h
p items.sort_by {|k, v| v}
p items.sort_by {|k, v| v}.to_h
p items

# ハッシュをキーで昇順にソートする
math = {"いいだ" => 12, "えんどう" => 99, "あだち" => 40}
# この下で、ハッシュをキーでソートして出力しよう
p math.sort

# ハッシュをソートしてハッシュで出力する
math = {"えんどう" => 99, "あだち" => 40, "いいだ" => 12}
# この下で、ハッシュをキーでソートして、ハッシュとして出力しよう
p math.sort.to_h

# ハッシュを値で昇順にソートする
math = {"あだち" => 40, "いいだ" => 12, "えんどう" => 99}
# この下で、ハッシュを値でソートして出力しよう
p math.sort_by {|k, v| v}

# RPGのアイテム一覧を再現２

# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# アイテムの並び順配列
items_order = ["クリスタル", "回復薬", "盾", "剣", "回復薬", "回復薬"]
# p items_img
# p items_order

#アイテム名を取り出す
items_order.each do |item_name|
    # 画像ファイルを取り出す
    puts "<img src = '#{items_img[item_name]}'>"
    puts "#{item_name}<br>"
end

# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# アイテムの並び順配列
items_order = ["剣", "盾", "回復薬", "クリスタル"]
# ここから下を記述しよう
items_order.each do |item_name|
    puts "<img src = '#{items_img[item_name]}'>""<br>"
end

# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# ここから下を記述しよう
input_line = gets.to_i #標準入力からアイテム数を整数として取得しています。

# アイテム名ごとに画像を表示
input_line.times do #アイテムの数だけ繰り返し処理を行います。timesメソッドは、指定された回数だけブロック内の処理を繰り返します。
  item_name = gets.chomp #アイテム名を1行ずつ取得しています。chompメソッドは、改行文字を取り除いた文字列を返します。
  if items_img.include?(item_name) #指定されたキーがハッシュに存在する場合にtrueを返し、存在しない場合にfalseを返します。
    puts "<img src='#{items_img[item_name]}'>" #与えられたアイテム名がitems_imgに存在しない場合は表示されません。
  end
end