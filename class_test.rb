p 1.class
p :a.class
p "a".class


class User
  attr_accessor :name, :gender
  def initialize(name, gender = 1)
    @name = name
    @gender = gender
  end

  def male?
    gender == 1
  end

  def female?
    gender == 2
  end

  def self.gender_option
    {male: 1, female: 2}.to_a
  end

  def user_class_method
    gender_option    #错误，ruby中实例方法不能调用类方法
  end

end

user = User.new 'a'
p user.name
user.name = 'b'
p user.name
p User.gender_option
p User.new('c').male?
p user.user_class_method #错误


