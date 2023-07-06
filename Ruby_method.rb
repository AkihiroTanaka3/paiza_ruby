# メソッドを作る
def say_hello()
    puts "hello world"
end

say_hello()
say_hello()

# メソッドを呼び出してみよう
def say_hello()
    puts "hello paiza"
end
# この下にメソッド呼び出しを記述する
# メソッドを作る
say_hello()

# メソッドを作成してみよう
def say_hello()
    # この下にメソッド内の処理を記述する
    puts "hello ruby"
end
say_hello()

# 間違い探し
# say_hello() メソッドより下に書く
def say_hello()
    puts "hello paiza"
end
say_hello()

# 引数と戻り値を追加する

def sum(x, y)
    x + y
    # return 100
end
num1 = sum(3, 4)
puts num1
num2 = sum(300, 400)
puts num2

# 掛け算メソッドを呼び出してみよう

def multi(x, y)
    return x * y
end
# この下にメソッド呼び出しを記述する
num = multi(2, 6)
puts num

# 掛け算メソッドを作成してみよう

def multi(x, y)
    # この下に処理を記述する
    return x * y
end
puts multi(3, 4)
puts multi(5, 7)
puts multi(12, 34)

# 九九の表を作成してみよう
def multi(x, y)
    return x * y
end

for i in 1..9
    for num in 1..9
    print multi(i, num)
    if num < 9
        print ", "
    end
    end
    puts
end

# スコープを理解する
$msg = "paiza" #グローバル変数、あまり使わない
a = 10 #ローカル変数
b = 20
def sum(x, y)
    a = 3
    puts "#{$msg} #{a}"
    return x + y
end

num = sum(a, b)
puts num
puts "#{$msg} #{a}"

# 間違い探し
$msg = "paiza"

def say_hello()
    puts "hello #{$msg}"
end

say_hello()

# RPGの攻撃シーン
def attack(enemy)
    puts "勇者は、#{enemy}を攻撃した"
    hit = rand(1..10)
    if hit < 6
        puts "#{enemy}に、#{hit}のダメージを与えた！"
    else
        puts "クリティカルヒット！ #{enemy}に、100のダメージを与えた！"
    end
end
enemies = ["スライム", "モンスター", "ドラゴン"]
enemies.each do |enemy|
    # puts "勇者は、#{enemy}を攻撃した"
    attack(enemy)
end

# RPGの攻撃シーン
def attack(person)
    puts "#{person}はスライムを攻撃した"
end

def output_ememy_hp(enemy_hp)
    puts "敵のHPは残り#{enemy_hp}です"
end

enemy_hp = gets.to_i
team = {"勇者" => 200, "戦士" => 150, "魔法使い" => 100}
team.each do |person, power|
    attack(person)
    # 以下に、敵の体力を減少させるコードを書く
    enemy_hp = enemy_hp - power
    output_ememy_hp(enemy_hp)
end

# メソッドの記法を理解する
def say_hello(msg)
    puts ("hello #{msg}")
end
# Rubyでは(引数)を省略して書くことができる
say_hello "ruby"

number = "123"
p number
p number.to_i
say_hello(number)

# 間違い探し
def say_hello(msg)
    puts("hello #{msg}")
end
name = "paiza"
say_hello(name)

# ブロックを理解する
team = ["勇者", "戦士", "魔法使い"]
p team
person = "忍者"
enemy = "スライム"

team.each do |person|
    enemy = "ドラゴン"
    puts "#{person}は、#{enemy}と戦った"
end
# do ~ end の中がブロック。
# do ~ end は { } で表記することもできる。
p person
p enemy

# RPGの戦闘シーン
enemies = ["スライム", "モンスター", "ドラゴン"]
player = "勇者"
enemies.each {|enemy|
    puts "#{player}は、#{enemy}と戦った。"
}
puts "#{player}は、すべての敵を倒した。"

# Here your code !
# 引数のデフォルト値
def introduce(name = "村人", msg) #デフォルト値
    puts "私は#{name}です。"
    puts "#{msg[:target]}、#{msg[:greeting]}。"
    # p msg
end
introduce("勇者", target: "世界の皆さん", greeting: "こんにちは")
# introduce()

# 引数のデフォルト値
def say_hello(target = "paiza")
    puts "hello #{target}"
end
# この下にメソッド呼び出しを記述する
say_hello