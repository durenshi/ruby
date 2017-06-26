class UserTest

  def self.test_self
    puts "test_salf method"
  end


  class << self
    def hello_self
      puts self
    end
  end

end

def UserTest.say_hello
  puts "say hello"
end

UserTest.test_self
UserTest.hello_self
UserTest.say_hello