class Kiwi

  include Enumerable

  attr_accessor :name, :age

  def initialize(msg, name=nil, age=nil)
    @msg = msg
    @name, @age = name, age
  end

  def each
    @msg.each{ |msg| yield msg*2 }
  end


end

kiwi = Kiwi.new([1,2,3])
p kiwi.collect { |num| num*2 }
# [4, 8, 12]

kiwi.each do |item|
  puts item
end

