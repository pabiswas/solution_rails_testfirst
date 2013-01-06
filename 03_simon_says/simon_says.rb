#!/usr/bin/env ruby

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, timesToRepeat = 2)
  ((str + " ")*timesToRepeat).chop
end

def start_of_word(str, position)
  str[0..position-1]
end

def first_word(str)
  str[/\w+/,0]
end

def titleize(str)
  output = String.new
  str.capitalize!
  str.each_line(' ') {
    |line|
    if line == "and " or line == "the " or line == "over "
      output += line
    else
      output += line.capitalize
    end
  }
  output
end
