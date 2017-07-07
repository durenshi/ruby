def test
  puts "test1"
  a
  puts "test2"
end

def a
  def b
    puts "b"
  end
  b
  puts "a"
  def c
    b
    puts "c"
  end

end

test
# test1
# b
# a
# test2
a
# b
# a
a.b
# b
# a
# b
a.c
# b
# a
# b
# c
