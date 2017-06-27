# ('a'..'z').each{ |x| p x }
#
# ('a'..'z').each_with_index{ |x,index| p index }

('a'..'z').each_slice(3){ |x| p x}
# ["a", "b", "c"]
# ["d", "e", "f"]
# ["g", "h", "i"]
# ["j", "k", "l"]
# ["m", "n", "o"]
# ["p", "q", "r"]
# ["s", "t", "u"]
# ["v", "w", "x"]
# ["y", "z"]

p (1..10).inject{ |sum,n| sum+n }
# 55

p (1..10).map{ |x| x*2 }
# [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

p (1..10).map(&:to_s) #  (1..10).map{|x| x.to_s}
# ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

p (1..10).select{ |i| i%3 == 0 }
# [3, 6, 9]

p (1..10).to_a.delete_if{ |i|  i % 3 != 0 }

p ['a', 'b', 'c'].zip([1, 2, 3])
# [["a", 1], ["b", 2], ["c", 3]]

p ['a', 'b', 'c'].zip([1, 2, 3]).to_h
# {"a"=>1, "b"=>2, "c"=>3}

p ('a'..'z').to_a.sample                #随机选择a到z中的任意一个字符
p ('a'..'z').to_a.sample(4).join(',')   #随机选择a到z中的任意4个字符

colors = ["red", "blue"]
colors.push("black")
colors << "white"
puts colors.join(", ") # red, blue, black, white

colors.pop        #remove最后一个元素
puts colors.last       #black

array = [1,2,3]
p array.uniq       # [1,2,3]
p array.uniq!      # nil
p array

class ArrayParams
  def test_array_params(*modules)
    p modules.length
    p modules
  end
end

ap = ArrayParams.new
ap.test_array_params(:ss, :aaa ,"c")