#ヒアドキュメント
name = '山本'
a = <<TEXT
株式会社アンダーソン#{name}様

いつもお世話になっております。
標題の件につきまして、別添データをお送りします。
不明な点があればまたご連絡ください。
TEXT
puts a

#ヒアドキュメントを直接引数として渡す（prependは渡された文字列を先頭に追加するメソッド）
b = '長男'
b.prepend(<<TEXT)
次男
三男
TEXT
puts b

#ヒアドキュメントの文字列に対して、直接upcaseメソッドを呼び出す。upcaseは文字列を大文字に変換するメソッド
c = <<TEXT.upcase
one
two
three
TEXT
puts c