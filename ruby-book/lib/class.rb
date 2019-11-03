class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names) #self.でクラスメソッドに
    names.map do |name|
      User.new(name)
    end
  end

  def hello
    "Hwllo, I am #{@name}"
  end
end

names = ['山田', '田中', '鈴木']
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

#定数 クラスメソッドでもインスタンスメソッドからでも定数を参照できる
class Product
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
p product.price
