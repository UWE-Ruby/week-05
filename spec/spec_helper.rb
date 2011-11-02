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

require_relative "../lib/assignment"


# this is the path to the test file that contains all the quotes. The path is 
# relative to the parent path which is where you execute RSpec.
TEXT_FILE = 'spec/fixtures/lebowski.txt'
