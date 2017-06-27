3.times.each do |variable|
  begin
    1/0
  rescue => err
    puts "error"
    raise err

  end
end

begin
  if [1,2].sample == 1
    raise ('abc')
  else
    raise ('test')
  end
rescue Exception => e
  p e.message
end


begin
  raise('fail') if [1,2].sample == 1
rescue =>e
  p e.message
else
  p 'ok'
ensure
  p 'done'
end


# begin
#   file = open("/unexistant_file")
#   if file
#     puts "File opened successfully"
#   end
# rescue => e
#   p e.message
#   file = STDIN
# end
# print file, "==", STDIN, "\n"

fname = "module_.rb"
begin
  file = open(fname)
  if file
    puts "file open successfully"
  end
rescue
  puts "retry"
  fname = "module.rb"
  retry
ensure
  file.close()
end