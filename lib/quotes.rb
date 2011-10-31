# 
# Here is where you will write the class Quotes
# 
# For more information about classes I encourage you to review the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes
# @see Programming Ruby, Chapter 3
# 
# 
# For this exercise see if you can employ the following techniques:
# 
# Use class convenience methods: attr_reader; attr_writer; and attr_accessor.
# 
# Try using alias_method to reduce redundancy.
# 
# @see http://rubydoc.info/stdlib/core/1.9.2/Module#alias_method-instance_method
# 
class Quotes
  def initialize(options = {})
    
    @quotes = []
    
    options.each do |key,value|
      send("#{key}=",value) if respond_to? "#{key}="
    end
  end
  
  attr_accessor :file, :quotes
  
  alias_method :all, :quotes
    
  def find(linenumber)
    if @quotes.empty? 
      "Could not find a quote at this time"
    else
      @quotes[linenumber] || @quotes.sample
    end
  end
  
  alias_method :[], :find
  
  def file=(filename)
    @filename = filename
    
    if File.exists? filename
      @quotes = File.readlines(filename).map {|quote| quote.strip }
    else
      @quotes = []
    end
  end
    
  def search(params = {})
    @quotes.map do |quote|
      params.empty? ? quote : params.map {|key,value| quote if quote.send("#{key}?",value) }.uniq
    end.flatten.compact
  end
  
end