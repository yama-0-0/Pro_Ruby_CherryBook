#国と通貨
def find_currency(country)
  currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
  currencies[country]
end

#指定した国の通貨を大文字で返す
def show_currency(country)
  currency = find_currency(country)
  currency&.upcase
end

puts show_currency(:japan) #YEN

#データベースからユーザーを探す
def user_exists?
  user = find_user
  if user
    true
  else
    false
  end
end

#上記コードを!!で省略 true又はfalseに変換するために使用
def user_exists?
  !!find_user
end