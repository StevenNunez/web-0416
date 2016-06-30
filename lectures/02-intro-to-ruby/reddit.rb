require 'rest-client'
require 'json'

result = RestClient.get("http://reddit.com/.json")
result_hash = JSON.parse(result)
puts result_hash
puts "The return value from Restclient is a #{result.class}"
puts "The return value from JSON.parse is #{result_hash.class}"
