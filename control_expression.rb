p 1 if true

p 1 unless false

name = :a # 'a' 'A' :c 10
case name
  when :a,'a'
    p 1
  when /a/i
    p 2
  when String,Symbol
    p 3
  else
    p 4
end

case "12345"
  when /^1/,"2"
    puts "the string starts with one or is 2"
  else
    puts "i don't know the string starts with"
end

n = 0
loop do
  n += 1
  p n
  break if n > 10
end


a = 0
while a < 10 do
  p a
  a += 1
end

p a