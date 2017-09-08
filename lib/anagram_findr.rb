class Grams
  def initialize(word)
    # Takes a word in when the object is created and proceeds to format the word
    @word = word.upcase.gsub(/[^a-zA-Z]/,'').strip.split("")
    @reverse = []
  end
  def anagram(word)
    # Formats the word we are checking to be UPCASE, have no punctuation, and be an array of chars
    candidate = word.upcase.gsub(/[^a-zA-Z]/,'').strip.split("")
    if @word.join.scan(/[aeiouy]/i).length == 0 or candidate.join.scan(/[aeiouy]/i).length == 0
       "Fake word detected..Please enter real word"
     else
      if candidate.sort.join.casecmp(@word.sort.join) === 0
        (@word.length-1).downto(0) do |i|
          @reverse.push(@word[i])
        end
        if @reverse.join.casecmp(candidate.join) === 0
          "These words are palindromes and anagrams!"
        else
          "These words are anagrams!"
        end
      elsif (@word & candidate).length == 0
        "These words are antigrams."
      else
        "These words are not anagrams :("
      end
    end
  end
end
