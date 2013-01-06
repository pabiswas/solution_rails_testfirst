class Temperature
  def self.from_celsius(temp)
    self.new(:c => temp)
  end
  
  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end
  
  def initialize(temp)
    @temperature = temp
  end
  
  def in_fahrenheit
    if @temperature.has_key? :f
      @temperature[:f]
    elsif @temperature.has_key? :c
      (@temperature[:c] * 9.0/5.0) + 32
    end    
  end
  
  def in_celsius
    if @temperature.has_key? :f
      (@temperature[:f] - 32) * 5/9
    elsif @temperature.has_key? :c
      @temperature[:c]
    end
  end
    
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
