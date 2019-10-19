#timesメソッド　指定した回数の処理を繰り返す
sum = 0
10.times{|n| sum += n} #1~9が入る
p sum

#uptoメソッド（１つずつ増やす）
num = []
5.upto(10){|n| num << n}
p num  #[5, 6, 7, 8, 9, 10]

#downtoメソッド（１つずつ減らす）
num = []
10.downto(5){|n| num << n}
p num  #[10, 9, 8, 7, 6, 5]

#stepメソッド　開始値.step(上限値,1度に増減する大きさ[減の場合はマイナス使用])
num = []
5.step(15,5){|n| num << n}
p num #[5, 10, 15]

#while文　条件が真であれば実行
int = []
while int.size < 4
  int << 1
end
p int #[1, 1, 1, 1]

int = []
int << 1 while int.size <4
p int

int = []
begin
  int << 1
end while false
p int #[1]

#until文　条件が偽であれば実行
int = [1,2,3,4,5]
until int.size <= 2
  int.delete_at(-1)
end
p int #[1, 2]

#loopメソッド
numbers = [2,4,6,8,10]
loop do
  i = numbers.sample #sampleメソッドはランダムに要素一つを取得
  puts i
  break if i == 10
end

#while文
while true
  i = numbers.sample
  puts i
  break if i == 10
end