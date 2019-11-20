puts 'Start'
module Greeter
  def hello
    'hello'
  end
end

#例外処理の組み込み
begin
 greeter = Greeter.new #=>NoMethodError
rescue
 puts '例外が発生したが、このまま続行する'
end

puts 'End'

puts '---------------------------------'

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError,"無効な国名です。 #{country}"
  end
end

currency_of(:us)
currency_of(:canada)
currency_of(:japan)