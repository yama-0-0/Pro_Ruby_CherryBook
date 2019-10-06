#eachメソッドは配列要素の最初から最後までを順番に取り出す
#「do~end」が取り出した要素をどう扱うかを示す
#繰り返し処理　１＋２＋３＋４は以下で表せる
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|  #nには取り出した要素が順に入る
  sum += n #ブロックの条件　配列の要素を全て合計する
end
p sum

#繰り返し処理　配列から奇数の要素を削除するのは以下で表せる
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.delete_if do |n| #deleteメソッドは削除　delete_ifメソッドで配列の要素を順に取り出してブロックの条件(do~end)に当てはまるものを削除
  n.odd? #数値が奇数の場合trueを返す。
end
p numbers

#繰り返し処理　配列要素の合計で偶数は５倍してから足す
numbers = [1,2,3,4,5]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n*5 : n #数値が偶数なら５倍、それ以外はそのまま取り出す
  sum += sum_value
end
p sum

#「do...end」は「{...}」に置き換えられる。使い分けは改行を含む長いブロックはdo..end、1行でコンパクトにかけそうな時は{...}
numbers = [1,2,3,4,5,6,7]
sum = 0
numbers.each { |n| sum += n}
p sum