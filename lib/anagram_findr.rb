class Grams
  def initialize(word)
    @word_ary = word.upcase.split("")
    @reverse_ary = []
  end
  def anagram(word)
    candidate_ary = word.upcase.split("")
    # return (candidate_ary & @word_ary).length == @word_ary.length
    if candidate_ary.sort == @word_ary.sort
      @word_ary.delete_if {|char| char == " "}
      (@word_ary.length-1).downto(0) do |i|
        @reverse_ary.push(@word_ary[i])
      end
      if @reverse_ary.join.casecmp(@word_ary.join) === 0
        "These words are palindromes and anagrams!"
      else
        "These words are anagrams!"
      end
    else
      "These words are not anagrams :("
    end
  end
end
