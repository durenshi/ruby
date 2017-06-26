
require "base64"
enc = Base64.encode64('abc')
p enc
plain = Base64.decode64(enc)
p plain

require 'digest'
p Digest::MD5.hexdigest('abc')
p Digest::SHA1.hexdigest('abc')


require 'json'
str = JSON.dump({a:1})
p str
h = JSON.load(str)
p h
# "{\"a\":1}"
# {"a"=>1}


require 'ostruct'
user = OpenStruct.new
user.name = "test"
user.age  = 18
p user[:name]

require 'uri'
uri = URI("http://example.com/users?page=2&name=du#list")
p uri.scheme        #"http"
p uri.host          #"example.com"
p uri.path          #"/users"
p uri.query         #"page=2&name=du"
p uri.fragment      #"list"

