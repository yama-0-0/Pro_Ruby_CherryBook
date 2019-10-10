#範囲オブジェクト 「1..5」=>1~5 「1...5」=>1~4
a = [1,2,3,4,5,6]
p a[2..4] #添え字で２番目から４番目の要素を抜き出す

#０度以上１００度未満であれば液体、と判定したい
def liquid?(temperature)
  (0...100).include?(temperature) #0 <= temperature && temperature < 100　と同意
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

#case文
def carge(age)
  case age
  when 0..5
    0
  when 6..10
    300
  when 11..15
    600
  when 16..20
    1000
  else
    1500
  end
end
p carge(3)
p carge(8)
p carge(15)
p carge(20)
p carge(88)

#to_aメソッド([]の中に*と範囲オブジェクト)　値が連続する配列を作成
p (1..5).to_a #[*1..5]と同意
p ('a'...'g').to_a #[*'a'..'g']と同意
p ('bad'..'bba').to_a #[*'bad'..'bba']と同意

#範囲オブジェクトの呼び出し
sum = 0
(1..10).each{|n| sum += n}
p sum

#stepメソッド　値を増やす感覚を指定
numbers = []
(1..20).step(4){|n| numbers<<n}
p numbers