#!/usr/bin/env ruby

def add(a,b)
  a + b
end

def sum(a)
  b = 0
  a.each do |num|
    b += num
  end
  b
end

def subtract(a,b)
  a - b
end

def multiply(a,b)
  a*b
end

def multiplyArray(arr)
  total = 1
  arr.each do |a|
    total *= a
  end
  total
end

def power(x,y)
  x**y
end

def factorial(n)
  if n == 0
    return 1
  end
  n = n * factorial(n-1)
end

#def factorial(n)
#  if n == 0
#    return 1
#  end
#  total = 1
#  n.times { |i| total *= i+1}
#  total
#end
