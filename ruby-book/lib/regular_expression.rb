#正規表現の例
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/) #["Ruby", "Python", "Java", "JavaScript"]

text='私の誕生日は2000年1月1日です。'
if/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/=~text
  puts"#{year}/#{month}/#{day}"
end #2000/1/1

#scan 正規表現にマッチした部分を配列で返す
p '1977年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/) # ["1977年7月17日", "2016年12月31日"]


text = '郵便番号は123-4567です'
p text[/\d{3}-\d{4}/] #[] 正規表現にマッチした部分を抜き出す "123-4567"
text.slice!(/\d{3}-\d{4}/) #slice!でマッチした部分を取り除く
p text #"郵便番号はです"

text = '123,456-789'
p text.split(',') #["123", "456-789"] split マッチした文字列を区切り文字にして文字列を分解し、配列として返す。

text = '大阪府、京都府'
p text.gsub('、',':') #"大阪府:京都府" gsubは指定した第１引数の文字列を第２引数の文字列と置き換える。
