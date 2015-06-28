# post_message.rb
require "net/http"
require 'uri'
require 'pry'
puts ""
print "Who do you want to message? "
to = gets.chomp
print "Who are you? "
from = gets.chomp

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

uri = URI("http://localhost:9292")

# TODO: Post the message to the server
# How do you submit a POST request using Ruby?
# Maybe a library called Net::HTTP has a post method? Google.

# req = Net::HTTP::Post.new(uri)
# req.set_form_data(to: to, from: from, content: content)
# response = Net::HTTP.start(uri.hostname, uri.port) do |http|
#   http.request(req)
# end

params = {to: to, from: from, content: content}
 
response = Net::HTTP.post_form(uri, params)

if response.message == "OK"
 puts "It worked :)"
else
 puts "Oops, something went wrong :("
end

puts ""
