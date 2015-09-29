require 'open-uri'
require 'json'

string_of_data = open("https://api.github.com/users/jwo").read
hash = JSON.parse(string_of_data)

puts hash["avatar_url"]
