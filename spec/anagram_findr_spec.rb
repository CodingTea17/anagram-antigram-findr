require "anagram_findr"

RSpec.describe("Grams#anagram") do
  it("will check to see if 'bury' is an anagram of 'ruby'") do
    ruby = Grams.new("ruby")
    expect(ruby.anagram("bury")).to eq("These words are anagrams!")
  end
  it("will check to see if 'bury' is an anagram of 'cat'") do
    ruby = Grams.new("cat")
    expect(ruby.anagram("bury")).to eq("These words are not anagrams :(")
  end
  it("will check to see if 'Bury' is an anagram of 'Ruby'") do
    ruby = Grams.new("Ruby")
    expect(ruby.anagram("Bury")).to eq("These words are anagrams!")
  end
  it("will check to see if 'Kayak' is an anagram and a palidrome of 'Kayak'") do
    ruby = Grams.new("Kayak")
    expect(ruby.anagram("Kayak")).to eq("These words are palindromes and anagrams!")
  end
end
