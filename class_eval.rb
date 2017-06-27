String.class_eval do
  def text_value
    puts "text value"
  end
end
"sss".text_value

class Person

end

# 使用ClassName.class_eval可以定义一个实例方法
Person.class_eval do
  def say_hello
    "hello! class_eval"
  end
end

# 使用ClassName.instance_eval可以定义一个类方法  可以用来定义单态函数singleton_methods
Person.instance_eval do
  def say_hello
    "hello! instance_eval"
  end
end

class Object
  def hello_p
    "hello p!"
  end
end

user = Person.new
puts user.say_hello     #hello! class_eval
puts user.hello_p       #hello p!
puts Person.say_hello   #hello! instance_eval
p Person.ancestors