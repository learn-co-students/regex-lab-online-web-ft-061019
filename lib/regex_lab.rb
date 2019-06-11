require 'pry'
def starts_with_a_vowel?(word)
  if word.match(/^[aeiou, AEIOU]/) != nil
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text_array = text.split(" ")
  output_array = []
  text_array.each do |word|
    if word.match(/^un/) != nil && word.match(/ing$/) != nil
      output_array << word
    end
  end
  output_array
end

def words_five_letters_long(text)
  text_array = text.split
  text_array.select do |word|
    word.length == 5
  end

end

def first_word_capitalized_and_ends_with_punctuation?(text)
  matched = text.scan(/\A[A-Z].*[\.\?\!]\z/)
  #binding.pry
  matched == [] ? matched = false : matched = true
end

def valid_phone_number?(phone)
  sanitized_phone = phone.scan(/\d/)

  sanitized_phone.length == 10 ? true : false
end
