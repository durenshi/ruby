my_proc = Proc.new {|n| puts "proc call #{n}"}
my_proc.call(1)             # proc call 1
my_proc.call()              # proc call

def proc_maker
  locat_var = " is great"
  return Proc.new{|s| puts s + locat_var}
end
proc_maker.call("ruby")     # ruby is great


my_lambda = lambda { |n| puts "lambda call #{n}"}
my_lambda.call(2)           #lambda call 2
# my_lambda.call()          # 报错。Lambda对参数的检查很严格，而Proc则比较宽松


def lambda_maker
  local_var = " is gread"
  return lambda{ |s|puts s + local_var}
end
lambda_maker.call("ruby")


def call_block
  yield(1)
  yield(2)
  yield(3)
end
call_block { |i| puts "#{i}: Block are cool" }


def contrived_example(n)
  yield n
end
puts contrived_example(2){|x|x+3}
# 5

# Lambdas检查传递给它的参数，Procs不检查。
# Proc的return直接在当前方法中返回值，Lambdas返回当前上下方

def return_proc
  p = Proc.new{ return "return proc"}
  p.call
  return "not this return"
end
puts return_proc
# return proc


def return_lambda
  l = lambda{ return "return lambda"}
  l.call
  return "call this"
end
puts return_lambda
# call this