class Kiwi

  include Enumerable

  def initialize(msg)
    @msg = msg
  end

  def each
    @msg.each{ |msg| yield msg*2 }
  end

end

kiwi = Kiwi.new([1,2,3])
p kiwi.collect { |num| num*2 }