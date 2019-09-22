# sprintfメソッドは指定されたフォーマットの文字列を作成する。少数第３位まで表示させる場合
a = sprintf('%0.3f',1.2)
puts a

# 複数渡すことも可能
b = sprintf('%0.3f + %0.3f',1.8,1.25)
puts b

#数値を文字列に変換
c = 456.to_s
puts c

#配列を連結して１つの文字列にする
d = [40,50,60].join
puts d

#文字列を繰り返す
e = 'Good!' * 10
puts e