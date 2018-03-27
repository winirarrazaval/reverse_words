# A method to reverse each word in a sentence, in place.
require "pry"

def reverse_words(my_words)
  return nil if my_words.nil?

  bottom = 0
  top = 0
  until bottom > (my_words.length - 1)
    while my_words[bottom] == " "
      bottom +=1
    end
    word_start = bottom
    wordlength = 0
    word = ""
    until my_words[wordlength] == " " || my_words[wordlength] == nil
      wordlength += 1
      word << " "
    end
    top = wordlength - 1
    count = 0
    bottom = 0
    until count > (wordlength / 2)
      return my_words if word[bottom] == nil
      value = my_words[word_start + bottom]
      word[bottom] = my_words[word_start + top]
      word[top] = value
      count += 1
      top -= 1
      bottom += 1

    end
    my_words[(word_start)..((word_start) + (wordlength - 1))] = word
    bottom = word_start + wordlength
  end
  puts my_words
end

my_words = "Hola Wini"
puts reverse_words(my_words)



 #
 #  return nil if my_words.nil?
 #
 # count = 0
 #  word = ""
 #
 #  while count <= my_words.length
 #    if my_words[count] == " " || my_words[count] == nil
 #
 #      bottom = 0
 #      top = word.length - 1
 #      while bottom < top
 #        character = word[top]
 #        word[top] = word[bottom]
 #        word[bottom] = character
 #
 #        bottom += 1
 #        top -= 1
 #      end
 #
 #      word_start = count - word.length
 #
 #      my_words[word_start...count] = word
 #
 #      word = ""
 #    elsif
 #      word += my_words[count]
 #    end # if statement to determine if word is complete
 #
 #    count += 1
 #  end # outer while loop for full string
 #
 #  return my_words
 #
 # end
