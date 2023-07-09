# クラスを作成する
class Player
    def walk()
        puts "勇者は荒野を歩いていた。"
    end
    
    def attack(enemy)
        puts "勇者は#{enemy}を攻撃した。"
    end
end

player1 = Player.new()
player1.walk()
player1.attack("スライム")
player1.attack("モンスター")
player1.attack("ドラゴン")
player1.attack("魔王")

# インスタンスを実体化しよう

class Greeting
    def say_hello()
        puts "hello paiza"
    end
end
# この下に、インスタンスを実体化し、メソッド呼び出しを記述する
hello = Greeting.new
hello.say_hello

# クラスにメソッドを定義しよう
class Greeting
    # この下に、say_helloメソッドを記述する
    def say_hello
        puts "hello ruby"
    end
end
paiza = Greeting.new
paiza.say_hello

# 間違い探し
# クラスの先頭の文字は大文字
# class greeting
class Greeting
    def say_hello()
        puts "hello paiza"
    end
end
# paiza = greeting.new()
paiza = Greeting.new()
paiza.say_hello()

# クラスで変数を管理する
class Player
    attr_accessor :job
    def initialize(job)
        @job = job
    end
    
    def walk()
        puts "#{@job}は荒野を歩いていた。"
    end
end

player1 = Player.new("戦士")
player1.walk()

player2 = Player.new("魔法使い")
player2.walk()
player1.walk()

player1.job = "勇者"
player1.walk()

# インスタンスを実体化しよう
class Greeting
    def initialize(name)
        @name = name
    end

    def say_hello()
        puts "hello #{@name}"
    end
end
# この下に、インスタンスを実体化し、メソッド呼び出しを記述する
hello1 = Greeting.new("paiza")
hello1.say_hello

# クラスにインスタンス変数を追加しよう
class Greeting
    def initialize(name)
        # この下に、initializeメソッドの処理を記述する
    @name = name
    end

    def say_hello()
        puts "hello #{@name}"
    end
end
ruby = Greeting.new("paiza")

# 間違い探し
class Greeting
    def initialize(name)
        @name = name
    end

    def say_hello()
        # puts "hello #{name}" @を付ける
        puts "hello #{@name}"
    end
end
ruby = Greeting.new("paiza")
ruby.say_hello()

# RPGの敵クラスを作る
class Enemy
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    
    def attack()
        puts "#{@name}は勇者を攻撃した。"
    end
end
enemies = []
enemies.push(Enemy.new("スライム"))
enemies.push(Enemy.new("モンスター"))
enemies.push(Enemy.new("ドラゴン"))

enemies.each do |enemy|
    enemy.attack()
end

# RPGの攻撃シーン
class Player
    def initialize(name)
        @name = name
    end

    def attack(enemy)
        puts  "#{@name}は#{enemy}を攻撃した"
    end
end
team = []
team.push(Player.new("勇者"))
team.push(Player.new("戦士"))
team.push(Player.new("魔法使い"))

team.each do |person|
    person.attack("スライム")
end

# クラスで、引数と戻り値のあるメソッドを作る
class Item
    @@tax = 1.08
    
    def initialize(price, quantity)
        @price = price
        @quantity = quantity
    end
    
    def total()
        (@price * @quantity * @@tax).round
    end
end
apple = Item.new(120, 15)
total = apple.total()
puts "合憲金額は#{total}円です。"

orange = Item.new(85, 32)
puts "合計金額は#{orange.total}円です。"

# 学生メソッドを呼び出す

class Gakusei
    def initialize(kokugo, sansu)
        @kokugo = kokugo
        @sansu = sansu
    end

    def sum()
        @kokugo + @sansu
    end
end
# この下で、インスタンスを実体化する
yamada = Gakusei.new(70, 43)
puts "合計は#{yamada.sum()}点です"

# 学生メソッドを作る
class Gakusei
    def initialize(kokugo, sansu)
        @kokugo = kokugo
        @sansu = sansu
    end

    # この下に、合計得点を戻り値として返すsumメソッドを記述する
    def sum()
        @kokugo + @sansu
    end
end
yamada = Gakusei.new(70, 43)
puts "合計は#{yamada.sum()}点です"

# 文字列も配列もオブジェクト
text = "123"
p text.to_i
p text.length
p text.class
p "123".class

players = "勇者, 戦士, 魔法使い, 忍者"
array = players.split(",")
p array
p array.length

array2 = Array.new(3)
p array2

# 文字列に対してメソッドを実行する
msg = "hello world"
# この下に、文字数をテキストとして表示する処理を記述する
p msg.length.to_s

# 配列に対してメソッドを実行する
team = ["勇者", "戦士", "魔法使い", "忍者", "盗賊"]
# この下に、配列の要素数をテキストとして表示する処理を記述する
p team.length.to_s

# 配列のクラス名を調べる
team = ["勇者", "戦士", "魔法使い", "忍者", "盗賊"]
# この下に、配列のクラス名を表示する処理を記述する
p team.class

# あらかじめ用意されているメソッド
puts "hello world"

line = gets.chomp.split(",")
p line

line.each do |player|
    puts "#{player}が荒野を歩いていた。"
end

# 標準入力の文字列を配列にする
# スライム,モンスター,ドラゴン,魔王
line = gets.chomp.split(",")
p line
