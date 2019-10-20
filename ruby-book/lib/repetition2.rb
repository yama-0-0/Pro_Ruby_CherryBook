numbers = [2,4,6,8,10].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 10
  i += 2
end

areas = ['大阪','東京','名古屋']
numbers = [1,2,3]
areas.each do |area|
  numbers.shuffle.each do |n|
   puts "#{area},#{n}"
   break if n == 3
  end
end

#throwとcatchでの大域脱出
areas = ['大阪','東京','名古屋']
numbers = [1,2,3]
catch :done do
  areas.shuffle.each do |area|
    numbers.shuffle.each do |n|
      puts "#{area},#{n}"
      if area == '東京' && n == 3
        throw :done
      end
    end
  end
end

#next　処理を中断せずに次に進める
numbers = [1,2,3,4,5]
numbers.each do |n|
  next if n.even? #抽出した数が偶数の場合は中断して次の繰り返し処理に進む
  puts n
end

#redo 繰り返し処理のやり直し
sports = ['野球','サッカー','テニス']
sports.each do |sport|
  print "#{sport}は好きですか？"
  answer = ['はい','いいえ'].sample #sampleはランダムで1要素を取得
  puts answer
  redo unless answer == 'はい' #「はい」でなければもう処理が繰り返される。
end

#redo 繰り返し処理のやり直し（回数の制限）
sports = ['野球','サッカー','テニス']
count = 0
sports.each do |sport|
  print "#{sport}は好きですか？"
  answer = 'いいえ'
  puts answer

  count += 1
  redo if answer != 'はい' && count < 2 #やり直しは２回まで
  count = 0 #カウントのリセット
end
