def a
  puts "a"
  def b
    puts "b"
  end

  def c
    b
    puts "c"
  end

end

a
# a
a.b
# a
# b
b
#b
c
#b
#c