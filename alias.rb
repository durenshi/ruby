
# 方法别名定义后，即使对应的方法在后面的代码中重新定义（即修改内部实现）后，
# 别名仍然可以调用到修改前的方法，而全局变量则不行。
def meth
  puts "this is meth"
end

alias :new_meth :meth

meth             #this is meth
new_meth         #this is meth

def meth
  puts "a new meth"
end

meth          #a new meth
new_meth      #this is meth

$a = 1
alias $b $a
$a = 2
p $a,$b

class Fixnum
  alias :old_plus :+

  def +(value)
    self.old_plus(value).old_plus(1)
  end

end

puts 1+1