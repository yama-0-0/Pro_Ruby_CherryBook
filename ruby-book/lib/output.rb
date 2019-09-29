#puts,print,p それぞれの出力の違いを確認する。putsは改行あり、printは改行なし、pは改行なしで"やn\も表示する
a = "あいう\nえお"
puts a
print a
p a

# putsとprintは一般ユーザ向け、pは開発者向け
int = [1,2,3]
puts int
print int
p int