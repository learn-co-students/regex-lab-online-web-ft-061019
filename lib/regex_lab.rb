require 'pry'

def starts_with_a_vowel?(word)
  # binding.pry
  word.match(/^[aeiouAEIOU]/) != nil ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  # binding.pry
  text.scan(/un+\w+ing/)
end
 
def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return false if !(text.match(/^[A-Z]/) != nil && text.match(/\.$/) != nil)
  true
end

def valid_phone_number?(phone)
  return false if phone.match(/^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$/) == nil
  true
end

