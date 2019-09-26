def greeting(country)
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greeting(nil)
puts greeting("japan")
puts greeting("USA")

#unless
status = 'error'
message =
 unless status == 'ok'   #if status != 'ok'と同じ意味
  '何か以上があります'
 else
  '正常です'
 end

 p message

 #if+否定条件は、unless+肯定条件と同じになる　どちらか読みやすい方を使用する

 #case文への書き換え　elsif多様ならcase
 def greeting(country)
  country = 'italy'
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'ciao'
  else
    '???'
  end
end

puts greeting('italy')


n = 11
if n > 10
  '10より大きい'
else
  '10以下'
end
#上記の式を三項演算子で書き換えると
n = 11
message = n > 10 ? '10より大きい' : '10以下'
puts message
