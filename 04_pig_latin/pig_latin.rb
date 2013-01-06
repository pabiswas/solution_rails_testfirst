def getLastLetter(word)
  word[word.length - 1]
end

def isVowel(letter)
  if letter == "a" or letter == "e" or letter =="i" or letter == "o" or letter =="u"
    true
  else
    false
  end
end

def wordBeginsWithVowel(word)
  return isVowel(word[0])
end

def getConsonent(word)
  i = 0
  while i < (word.size - 1)
    break if isVowel(word[i])
    i += 1
  end
  word[0..i-1]
end

def wordHasPhenom(word)
  word[/qu/,0]
end

def translate(words)
  magicword = "ay "
  magicword.freeze
  finalString = String.new
  words.each_line(' ') {
    |word|
    word.delete! " "

    if wordHasPhenom(word)
      finalString += word[(word.index('qu')+2)..word.length] + word[0..(word.index('qu')+1)] + magicword
    elsif wordBeginsWithVowel(word)
      word += magicword
      finalString += word
    else
      consonent = getConsonent(word)
      finalString += word[consonent.length..word.length] + consonent + magicword
    end
  }
  return finalString.rstrip!
end
