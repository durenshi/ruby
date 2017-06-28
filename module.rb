# 模块（Module）是一种把方法、类和常量组合在一起的方式。模块（Module）为您提供了两大好处。
# 模块提供了一个命名空间和避免名字冲突。
# 模块实现了 mixin 装置。
# 模块（Module）定义了一个命名空间，相当于一个沙盒，在里边您的方法和常量不会与其他地方的方法常量冲突。
# 模块类似与类，但有一下不同：
# 模块不能实例化
# 模块没有子类
# 
# 
module Week
	FIRST_DAY = "sunday"
	def Week.weeks_in_month
		puts "you have four weeks in a month"
	end

	def Week.weeks_in_year
		puts "you have 52 weeks in a year"
	end
end

$LOAD_PATH << '.'
class Decade
	include Week
	def no_of_months
		puts Week::FIRST_DAY
		number  = 10*12
		puts number
	end
end

d1 = Decade.new
puts Week::FIRST_DAY   
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months


# sunday
# you have four weeks in a month
# you have 52 weeks in a year
# sunday
# 120
# 

module A
   def a1
   	puts "a1"
   end
   def a2
   	puts "a2"
   end
end
module B
   def b1
   	puts "b1"
   end
   def b2
   	puts "b2"
   end
end
module CC
	extend self
	def c
		puts "cccc"
	end
end
 
class Sample
include A
include B
include CC
   def s1
   end
end
 
samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
CC.c
samp.c
Sample.c  # error


module UserGender
	module ClassMethod
		def gender_options
			{male: 1, female: 2}.to_a
		end
	end

	def male?
		gender == 1
	end

	def female?
		gender == 2
	end
end

class User
	include UserGender
	extend UserGender::ClassMethod

	attr_accessor :name, :gender
	def initialize(name, gender=1)
		@name = name
		@gender = gender
	end
end

user = User.new('a')
p user.male?             #true
p User.gender_options    #[[:male, 1], [:female, 2]]

module M
	def greet
		"hello from M"
	end
end

include M

class C;end
c = C.new
puts c.greet
puts Object.ancestors