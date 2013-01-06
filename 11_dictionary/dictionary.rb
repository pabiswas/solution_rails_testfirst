class Dictionary
  attr_reader :entries
  
  def add data
    case data
    when String
      @entries[data] = nil
    when Hash
      @entries.merge!(data)
    end
  end
  
  def initialize
    @entries = {}
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include? data
    @entries.has_key?(data)
  end
  
  def find data
    result = {}
    @entries.each {
      |k,v|
      if k =~ /^#{data}/
        result[k] = @entries[k]
      end
    }
    result
  end
  
  def printable
    @entries.map {
      |key_value|
      "[#{key_value.first}] \"#{key_value.last}\"" 
    }.sort.join("\n")
  end
  
end
