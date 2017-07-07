
#方法1，参数前面加*
def array_params_test1(name, *ids)
  puts name
  p ids
end

array_params_test1 "du"
# du
# []
array_params_test1 "du",["111","222"]
# du
# ["111", "222"]

# 方法2，后面加=[]
def array_params_test2(name="test", ids=[])
  puts ids.length
end

array_params_test2 "adu",["111","222"]

# 2
def test
  # init_hash = {}

  {
      "7"=> {"a":"b"}
  }
end
puts test["7"]
# 即 puts test()["7"]


def a_method a, b="yo", *msgs, c,  key_param: "value",  **options, &block
  puts "a=#{a}"
  puts "b=#{b}"
  puts "msgs=#{msgs}"
  puts "c=#{c}"
  puts "key_param: #{key_param}"
  puts "options: #{options}"
  puts "block: #{block.call}"
end

a_method "called", "with", "lots", "of", "c", and: "a custom key param" do
  "and a block"
end

a1 , a2 = [35,46]
p a1,a2

def params (arg1, arg2)
  puts arg1
  puts arg2
end
args = [1,2]
params(*args)
