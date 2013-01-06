class Book
  attr_reader :title
  
  def title=(names)
    firstWord = String.new
    nameArr = names.split(" ")
    firstWord = nameArr[0].capitalize
    nameArr[1..-1].each {
      |name|
      if name == "an" or name == "the" or name == "a" or name == "of" or name == "and" or name == "in" 
      else
        name.capitalize!
      end
    }
    
    if nameArr.size == 1
      @title = firstWord
    else
      @title = firstWord + " " + nameArr[1..-1].join(" ")
    end
  end
end
