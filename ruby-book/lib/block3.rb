#each_with_indexメソッド　ブロック引数の第２引数に添字を渡す　(1)で添え字スタートを変更する場合は、each.with_index(1)
names = ['山田','鈴木','田中']
names.each_with_index{ |name,i| puts "#{i}:#{name}"}

#mapでも可能 (1)を入れることで添え字の始まりを変更
names = ['山田','鈴木','田中']
names.map.with_index(1){ |name,i| puts "#{i}:#{name}"}

#delete_if　削除する
names = ['山田','鈴木','田中']
names.delete_if.with_index{ |name,i| name.include?('田')}

#面積の計算
dimensions = [[10,20],[40,50],[20,60]]
areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length*width
end
p areas

#面積の計算（コードレビュー）
dimensions = [[10,20],[40,50],[20,60]]
areas = []
dimensions.each do |length,width|
  areas << length*width
end
p areas

#each_with_index
dimensions = [[10,20],[40,50],[20,60]]
areas = []
dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "length:#{length},width:#{width},i:#{i}"
end

#each_with_index （コードレビュー）
dimensions = [[10,20],[40,50],[20,60]]
areas = []
dimensions.each_with_index do |(length,width), i|
  puts "length:#{length},width:#{width},i:#{i}"
end

#ブロックの後ろに別のメソッドを続ける
names = ['山田','鈴木','田中']
san_names = names.map{|name| "#{name}さん"}
puts san_names.join('と')

#ブロックの後ろにドットでつなげることも可能
names = ['山田','鈴木','田中']
puts names.map{|name| "#{name}さん"}.join('と')
