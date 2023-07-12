# Here your code !
# Exception
puts "1"
string = nil
number = string #.chomp #ここでエラー
puts "2"

# 簡単な例外処理
puts 1
begin
    number = 0
    answer = 100 / number
    puts answer
# 例外ハンドラ
rescue ZeroDivisionError => e
    p e
ensure
    puts 2 
end

# 例外処理を定義しよう
begin
    enemies = ["スライム","ドラゴン","魔王"]
    number = 0
    rescue ZeroDivisionErrer => e
        puts "勇者は#{enemies[2/number]}と戦った"
    p e
    ensure
        puts "勇者は敵に遭遇した"
        puts "勇者は勝利した"
end

# Here your code !
puts 1
begin
    number = 0
    answer = 100 / number
    puts answer
rescue ZeroDivisionError => e
    puts "0では割り算できません"
    # puts e.message
    # p e.backtrace
    STDERR.puts e.backtrace
ensure
    puts 2
end

# 例外メッセージを指定しよう
begin
    enemies = ["スライム","ドラゴン","魔王"]
    number = 0

    puts "勇者は敵に遭遇した"
    puts "勇者は#{enemies[2/number]}と戦った"
rescue ZeroDivisionError => e
    STDERR.puts "その敵は表示できません"
ensure
    puts "勇者は勝利した"
end
