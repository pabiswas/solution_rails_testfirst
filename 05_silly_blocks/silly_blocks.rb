def reverser
  tmp = yield.split(/ /)
  finalString = String.new
  tmp.each do |element| 
    finalString += element.reverse + " "
  end
  return finalString.rstrip
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  while num > 0 do    
    yield
    num -= 1
  end 
end
