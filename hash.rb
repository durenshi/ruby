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
p users[0][0]   # :a
h3  = {}
users =
  users.map do |user|
    attributes.zip(user).to_h
  end
p users     #[{:name=>:a, :age=>10}, {:name=>:b, :age=>11}, {:name=>:c, :age=>12}]

# hash = {}
hash = {page_info:{page_menu:"toAccepted", page_size:"30"}}
page_info = { page_menu:"toAccepted", page_size:"50" }
new_hash = Hash(hash[:page_info]).merge(page_info)
p new_hash  # {:page_menu=>"toAccepted", :page_size=>"50"}
hash[:page_info] = new_hash
p hash      # {:page_info=>{:page_menu=>"toAccepted", :page_size=>"50"}}

p hash.dig(:page_info)
# {:page_menu=>"toAccepted", :page_size=>"50"}
p hash.dig(:page_info,:page_menu)
# "toAccepted"


h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.update(h2)
p h1  #=> { "a" => 100, "b" => 254, "c" => 300 }

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge(h2)
p h1  #=> { "a" => 100, "b" => 200 }




