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