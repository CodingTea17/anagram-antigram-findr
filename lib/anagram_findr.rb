class Grams
  def initialize(word)
    @word_ary = word.split("")
  end
  def findr(word)
    if (@word_ary & word.split("")).length == (@word_ary).length
      "These words are anagrams!"
    end
  end
end
