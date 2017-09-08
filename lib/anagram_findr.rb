class Grams
  def initialize(word)
    @word_ary = word.upcase.split("").delete_if {|char| char == " " or char == ","}

    @reverse_ary = []
  end
  def anagram(word)
    candidate_ary = word.upcase.split("").delete_if {|char| char == " " or char == ","}
    if candidate_ary.sort.join.casecmp(@word_ary.sort.join) === 0
      (@word_ary.length-1).downto(0) do |i|
        @reverse_ary.push(@word_ary[i])
      end
      if @reverse_ary.join.casecmp(candidate_ary.join) === 0
        "These words are palindromes and anagrams!"
      else
        "These words are anagrams!"
      end
    else
      "These words are not anagrams :("
    end
  end
end
