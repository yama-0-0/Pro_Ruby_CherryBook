#mapメソッド　ブロックの戻り値が新しい配列の各要素となる
#eachメソッドに置き換えた場合は、空の配列を用意する必要がある
numbers = [2,4,6,8,10]
new_numbers = numbers.map { |n| n * 5 }
p new_numbers

#selectメソッド　ブロックの戻り値が真となる要素を集めた配列を返すメソッド
numbers = [1,2,3,7,5,8,10]
even_numbers = numbers.select { |n| n.even?} #偶数の要素を取り出す
p even_numbers

#rejectメソッド　ブロックの戻り値が真となる要素を除外した配列を返すメソッド
numbers = [1,2,3,4,5,6,7,8,9,10]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0} #3の倍数を除外
p non_multiples_of_three

#findメソッド　ブロックの戻り値が真になった最初の要素を返す
numbers = [1,2,3,4]
even_numbers = numbers.find { |n| n.even? }
p even_numbers

#injectメソッド　たたみ込み演算を行うメソッド
day = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
week = day.inject('Sun') { |result, s| result + s}
p week  #(((((('Sun'+'Mon')+'Tue')+'Wed')+'Thu')+'Fri')+'Sat')の処理が行われた

#「&:メソッド名」①〜③の条件が全て揃った際に使用できる省略表記
#①ブロック引数が１つ ②呼び出すメソッドに引数がない ③メソッドを１回呼び出す以外の処理がない
numbers = [1,2,3,4,5,6]
odd_numbers = numbers.select(&:odd?) #{ |n| n.odd? }と同意
p odd_numbers
