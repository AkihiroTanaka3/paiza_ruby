# クラスを継承する
class Box
    def initialize(item)
        @item = item
    end
    
    def open()
        puts "宝箱を開いた、#{@item}を手に入れた。"
    end
end

class JewelryBox < Box
    def look()
        puts "宝箱はキラキラと輝いている。"
    end
end

box = Box.new("鋼鉄の剣")
box.open()

puts

jewelrybox = JewelryBox.new("魔法の指輪")
jewelrybox.look()
jewelrybox.open()

# クラスにメソッドを定義しよう
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end
end

class Hello < Greeting
    # この下に、say_helloメソッドを記述する
    def say_hello()
        puts "#{@msg} #{@target}"
    end
end

player = Hello.new()
player.say_hello()

# クラスを継承しよう
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end
end

# この下に、Greetingクラスを継承した、Helloクラスを定義する。
# そこに、say_hello()メソッドの定義を記述する。
class Hello < Greeting
    def say_hello()
        puts "#{@msg} #{@target}"
    end
end
player = Hello.new()
player.say_hello()

# 間違い探し
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end
end

# class hello < Greeting クラスは頭文字を大文字にする
class Hello < Greeting
    def say_hello()
        puts "#{@msg} #{@target}"
    end
end

player = Hello.new()
player.say_hello()

# メソッドのオーバーライド
class Box
    def initialize(item)
        @item = item
    end
    
    def open()
        puts "宝箱を開いた。#{@item}を手に入れた。"
    end
end

class MagicBox < Box
    def look()
        puts "宝箱は妖しく輝いている。"
    end
    
    def open()
        puts "宝箱を開いた。#{@item}が襲いかかってきた！"
    end
end

box = Box.new("鋼鉄の剣")
box.open()

puts

magicbox = MagicBox.new("ものまねモンスター")
magicbox.look()
magicbox.open()

# メソッドをオーバーライドしよう
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end

    def say_hello()
        puts "#{@msg} #{@target}"
    end
end

class Hello < Greeting
    # ここにオーバライドするメソッドを記述する
    def say_hello(name)
        puts "#{@msg} #{name}"
    end
end

player = Hello.new()
player.say_hello("ruby")

# メソッドをオーバーライドしよう2
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end

    def say_hello()
        puts "#{@msg} #{@target}"
    end
end

class Hello < Greeting
    def say_hello()
        puts "#{@msg} #{@target}"
        puts "YEAH YEAH YEAH!"
    end
end

# player = Greeting.new()
# player.say_hello()
player = Hello.new
player.say_hello()

# 間違い探し
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end

    def say_hello()
        puts "#{@msg} #{@target}"
    end
end

class Hello < Greeting
    def say_hello(target)
        puts "#{@msg} #{target}"
    end
end

player = Hello.new()
# player.say_hello()
player.say_hello("ruby")

# RPGのPlayerクラスを継承で記述する
class Player
    def initialize(name)
        @name = name
    end
    
    def attack(enemy)
        puts "#{@name}は、#{enemy}を攻撃した！"
    end
end

puts "=== パーティーでスライムと戦う ==="
hero = Player.new("勇者")
warrior = Player.new("戦士")
party = [hero, warrior]

# p party

party.each do |player|
    player.attack("スライム")
end

# RPGのPlayerクラスを継承で記述する その2
class Player
    def initialize(name)
        @name = name
    end

    def attack(enemy)
        puts "シャラララーン！"
        puts "#{@name}は、#{enemy}を攻撃した！"
    end
end

class Wizard < Player
    def attack(enemy)
        puts "#{@name}は、#{enemy}に炎を放った！"
    end
end

puts "=== パーティでスライムと戦う ==="
hero   = Player.new("勇者")
warrior = Player.new("戦士")
wizard = Wizard.new("魔法使い")
party = [hero, warrior, wizard]

# p party

party.each do |player|
    player.attack("スライム")
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

class Warrior < Player
    def attack(enemy)
        puts  "#{@name}は#{enemy}を猛攻撃した！"
    end
end


team = []
team.push(Player.new("勇者"))
team.push(Player.new("魔法使い"))
team.push(Warrior.new("戦士"))

team.each do |person|
    person.attack("スライム")
end

# クラスからメソッドを呼び出す
class Player
    def initialize(name)
        @name = name
    end

    def attack(enemy)
        puts "#{@name}は、#{enemy}を攻撃した！"
    end
end

class Wizard < Player
    def initialize()
        super"魔法使い" #スーパーメソッドを使う
    end
    def attack(enemy)
        spell()
        puts "#{@name}は、#{enemy}に炎を放った！"
    end
    
    private
    def spell()
        puts "シャラララーン！"
    end
end


puts "=== パーティでスライムと戦う ==="
hero   = Player.new("勇者")
warrior = Player.new("戦士")
wizard = Wizard.new()
party = [hero, warrior, wizard]

party.each do |player|
    player.attack("スライム")
end

# wizard.spell()

# クラスの中のメソッドを呼び出す
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end
    def say_hello()
        puts "#{@msg} #{@target}"
        say_yeah()
    end

    private
    def say_yeah()
        puts "YEAH YEAH YEAH!"
    end
end

player = Greeting.new()
player.say_hello()

# 親クラスのメソッドを呼び出す
class Greeting
    def initialize()
        @msg = "hello"
        @target = "paiza"
    end

    def say_hello()
        puts "#{@msg} #{@target}"
    end
end

class Hello < Greeting
    def say_hello()
        puts "YEAH YEAH YEAH!"
    end
end

player = Greeting.new()
player.say_hello()
player = Hello.new()
player.say_hello()
