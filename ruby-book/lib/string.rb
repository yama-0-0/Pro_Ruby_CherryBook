puts %q!He said, "Don't speak."! # %q!はシングルクオートで囲むのと同じ

something = "Hello."
puts %Q!He said, "#{something}"! # %Q!はダブルクオートで囲むのと同じ

something = "Bye"
puts %!He said, "#{something}"! # %!はダブルクオートで囲むのと同じ

puts %q?He said, "Don't speak."? #?も！と同じ用途で使用可能

