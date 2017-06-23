my_proc = Proc.new {|n| puts "proc call #{n}"}
my_proc.call(1)
my_proc.call()

my_lambda = lambda { |n| puts "lambda call #{n}"}
my_lambda.call(2) 
my_lambda.call() # 报错。Lambda对参数的检查很严格，而Proc则比较宽松

def call_block
  puts "start"
  yield
  yield
  puts "end"
end

call_block { puts "Blocks are cool!" }