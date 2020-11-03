require 'pry'
class PigLatinizer
  attr_reader :word
  
  def piglatinize_word(word) 
    #transfer initial consonant or consonant blend(ch, str) to end of word 
    #add "ay" to end of word 
    
    #if word begins with vowel
    #transfer vowel to end of word 
    #add "way"
    if word.start_with?("A", "E", "I", "O", "U", "a", "e", "i", "o", "u")
      word + 'way'
    else
      consonants = []
      consonants << word[0]
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join.to_s + "ay"}"
    end
    # binding.pry
  end
  
  def piglatinize(sentence)
    a = sentence.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
  end

end