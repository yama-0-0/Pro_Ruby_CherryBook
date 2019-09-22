#２進数
a = 0b1010101010
puts a

#８進数
b = 0377
puts b

#１６進数
c = 0xdd
puts c

#ビット演算 to_s(2)で２進数で確認
d = (~0b1010).to_s(2)
e = (0b1010&0b1100).to_s(2)
f = (0b1010|0b1100).to_s(2)
g = (0b1010^0b1100).to_s(2)
h = (0b1010>>1).to_s(2)
i = (0b1010<<1).to_s(2)

puts d
puts e
puts f
puts g
puts h
puts i

#integer  整数
#float    小数
#rational 有理数
#complex  複素数