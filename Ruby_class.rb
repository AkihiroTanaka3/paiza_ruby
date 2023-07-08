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