h = {a: 1, b: 2, c: 3}
# h.keys
# h.key?(:a)
# h.values
# h.values_at(:b, :a)
# h.each{|k, v| p "%s=>%s" % [k, v]}
# h.delete(:a)
h.merge(d: 4)
p h       #{:a=>1, :b=>2, :c=>3}
h.merge!(d:4)
p h       #{:a=>1, :b=>2, :c=>3, :d=>4}
h2 = h.merge(d:4)
p h2      #{:a=>1, :b=>2, :c=>3, :d=>4}
h.delete(:a)
p h       #{:b=>2, :c=>3, :d=>4}

h =  {a:1, b:2, c:3}
p h.fetch(:a)
p h[:a]
# p h.fetch('a')
p h.fetch('a', h.fetch(:a,11))

attributes = [:name, :age]
users = [[:a,10], [:b,11], [:c,12]]
h3  = {}
users =
  users.map do |user|
    attributes.zip(user).to_h
  end
p users