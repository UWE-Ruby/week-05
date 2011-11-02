require 'craigler'

results = Craigler.search(:computers_and_tech, :in => [:seattle], :for => 'Mac')

result = results.first

puts "#{result[:title]} #{result[:url]}"


# This would make the API act like the documentation using our good old friend
# OpenStruct.
# 
# require 'ostruct'
# result_object = OpenStruct.new result
# puts "#{result_object.title} #{result_object.url}"



# Another way of to wrap the object is to use a simialr structure used by the 
# Twitter gem called Hashie.
# 
# @see https://github.com/intridea/hashie
# 
# require 'hashie'
# result_object = Hashie::Mash.new result
# puts "#{result_object.title} #{result_object.url}"
# 