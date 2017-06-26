
#方法1，参数前面加*
def array_params_test1(name, *ids)
  puts name
  p ids
end

array_params_test1 "du"
# du
# []
array_params_test1 "du","111","222"
# du
# ["111", "222"]

# 方法2，后面加=[]
def array_params_test2(name, ids=[])
  puts ids.length
end

array_params_test2 "du",["111","222"]


class Person

end

person = Person.new
eigenclass = class << person
               self
end

superclass = class << Person
               self
end

puts Person
puts eigenclass
puts superclass
puts eigenclass ==   superclass