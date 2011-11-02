#
# This is a workaround for require_relative being missing from Ruby 1.8.7.
# Though the assigns are targetted at Ruby 1.9.2 I wanted to ensure that they
# are possible in Ruby 1.8.7
# 
unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end


# Loads the search_for_quote and find_quote files which will contain your 
# methods: #search_for_quote and #find_quote

require_relative 'quotes'

#
# You should uncomment these if you are going to write some tests for classes
# or functions in these files.
# 
# require_relative 'craigslist'
# require_relative 'twitterapi'