require 'twitter'

#
# Refer to the documentation on how to use the API for some basic examples:
# 
# @see https://github.com/jnunemaker/twitter
# 
# The tweet and other data is returned in a custom class object called a Hashie,
# or Mashie. They essentially act like OpenStructs in a lot of ways.
# 
# @see https://github.com/intridea/hashie
# 

# Should have 3 recent tweets where the hashtag is #ruby
tweets = Twitter.search("#ruby", :rpp => 3, :result_type => "recent")

tweet = tweets.first

puts "#{tweet.user.name}: #{tweet.text}"


# This is how you might show all three tweets that you have recieved
# tweets.each do |tweet|
#   puts "#{tweet.user.name}: #{tweet.text}"
# end