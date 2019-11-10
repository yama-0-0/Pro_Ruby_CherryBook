#メソッドの公開レベルは基本はpublic その他にprivateやprotectedで調整が可能

#private
class User
  def foo
    'foo'
  end

  def bar
    'bar'
  end

  #fooとbarをprivateメソッドに変更
  private :foo, :bar

  def baz
    'baz'
  end
end

  user = User.new
  user.foo #エラー
  user.bar #エラー
  user.baz #表示される

  #protected
  class User
    attr_reader :name, :weight

    def initialize (name,weight)
      @name = name
      @weight = weight
    end

    def heavier_than?(other_user)
      other_user.weight < @weight
    end

    #同じクラスかサブクラスであればレシーバ付きで呼び出せる
    protected :weight

  end
  alice = User.new('Alice',50)
  bob = User.new('Bob',60)
