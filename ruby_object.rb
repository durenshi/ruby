class Obj
	attr_accessor :first, :second

	def initialize
		@first = "111"
		@second = {[1,2] => "x"}
	end

end
obj1 = Obj.new
obj2 = obj1.clone
p obj1.object_id != obj2.object_id
p obj1.first.object_id == obj2.first.object_id

obj3 = Marshal.load(Marshal.dump(obj1))
p obj1.object_id != obj3.object_id
p obj1.first.object_id != obj3.first.object_id