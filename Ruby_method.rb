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
