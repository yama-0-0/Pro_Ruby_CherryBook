#{}.size ハッシュの要素の個数
a = {'a' => 1,'b' => 2,'c' => 3}.size
p a #3

#{}.delete 指定したキーの削除
a = {'a' => 1,'b' => 2,'c' => 3}
a.delete('a')
p a

#ハッシュのキーをシンボルへ
num = {:a => 1,:b => 2,:c => 3}
p num[:a] #1

#=>から:へ
num = {a: 1,b: 2,c: 3}
p num[:a] #1

