class RPNCalculator
  attr_accessor :value
  
  def initialize
    @numberStack = []
  end
  
  def push number
    @numberStack.push(number)
  end
  
  def pop
    value = @numberStack.pop
    if value.nil? 
      raise "calculator is empty"
    end
    value
  end
  
  def plus
    @value = pop + pop
    @numberStack.push(@value)  
  end
  
  def minus  
    @value = pop - pop
    @numberStack.push(@value)
  end
  
  def divide
    @value = pop.to_f / pop.to_f
    @numberStack.push(@value)
  end
  
  def times
    @value = pop * pop
    @numberStack.push(@value)
  end
  
  def tokens str
    str.split.map do |a|
      case a
      when '+', '-', '*', '/'
        a.to_sym
      else
        a.to_i
      end
    end
  end
  
  def evaluate str
    tmpstack = []
    str.split.each do |a|
      case a
      when '+'
        tmpstack.push(tmpstack.pop.to_i + tmpstack.pop.to_i)
      when '-'
        tmpstack.push(tmpstack.pop.to_i - tmpstack.pop.to_i)
      when '*'
        tmpstack.push(tmpstack.pop.to_i * tmpstack.pop.to_i)
      when '/'
        tmpstack.push(tmpstack.pop.to_f / tmpstack.pop.to_f)
      else
        tmpstack.push(a)
      end
    end
    tmpstack.pop
  end
  
end
