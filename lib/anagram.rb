require 'pry'


class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def is_anagram?(test_word)
    letters = test_word.downcase.split("").sort
    my_letters = word.split("").sort
    letters == my_letters
    #binding.pry   
   

  end 

  def match(possible_anagrams)

      anagrams = []
      possible_anagrams.each do |possible_anagram|
        if is_anagram?(possible_anagram)
            anagrams << possible_anagram
        end 
      end 
      anagrams    
  end 
end
