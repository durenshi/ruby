module Foo
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def bar
      puts 'class method'
    end
  end

  def foo
    puts 'instance method'
  end
end

class Baz
  include Foo


  def test
    foo
  end

  def self.test2
    bar
  end

end

Baz.new.test
Baz.test2
# Baz.bar # class method
# Baz.new.foo # instance method
# Baz.foo # NoMethodError: undefined method ‘foo’ for Baz:Class
# Baz.new.bar # NoMethodError: undefined method ‘bar’ for #<Baz:0x1e3d4>