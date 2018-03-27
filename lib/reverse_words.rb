# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  return nil if my_words.nil?

  bottom = 0
  top = 0

  until bottom > (my_words.length - 1)
    while my_words[bottom] == " "
      bottom +=1
      return my_words if bottom == (my_words.length)
    end
    word_start = bottom
    wordlength = 0
    word = ""
    until my_words[bottom] == " " || my_words[bottom] == nil
      bottom += 1
      wordlength += 1
      word << " "
    end

    top = wordlength - 1
    count = 0
    bottom = 0
    until count > (wordlength / 2)
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
