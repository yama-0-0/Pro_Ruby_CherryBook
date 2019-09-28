#デフォルト値の有無の引数を混在させたメソッド
def default_args(a,b,c = 0,d = 0)
  "a = #{a}, b = #{b}, c = #{c}, d = #{d} "
end

puts default_args(1,2)
puts default_args(1,2,3)
puts default_args(1,2,3,4)


#Timeなどの動的に変わる値、他のメソッドの戻り値を指定することも可能
def foo(time = Time.now, message = bar)
  "time: #{time}, message: #{message}"
end

def bar
  "Hello"
end

puts foo

#?は真偽値を返すメソッド　4の倍数ならtrue,それ以外はfalseを返す
def multiple_of_four?(n)
  n % 4 == 0
end

puts multiple_of_four?(4)
puts multiple_of_four?(5)
puts multiple_of_four?(6)

#!は注意事項があるメソッド　呼び出したオブジェクトの状態を変更してしまう破壊的メソッド等
a = "java"
puts a.upcase
puts a

a = "java"
puts a.upcase!
puts a
