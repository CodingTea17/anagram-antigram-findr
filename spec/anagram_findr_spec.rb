require "anagram_findr"

RSpec.describe("Grams#anagram") do
  it("will check to see if 'bury' is an anagram of 'ruby'") do
    ruby = Grams.new("ruby")
    expect(ruby.anagram("bury")).to eq("These words are anagrams!")
  end
  it("will check to see if 'bury' is an anagram of 'curry'") do
    cat = Grams.new("curry")
    expect(cat.anagram("bury")).to eq("These words are not anagrams :(")
  end
  it("will check to see if 'Bury' is an anagram of 'Ruby'") do
    ruby = Grams.new("Ruby")
    expect(ruby.anagram("Bury")).to eq("These words are anagrams!")
  end
  it("will check to see if 'Kayak' (a palindrome with a capitalized letter) is an anagram and a palidrome of itself") do
    kayak = Grams.new("Kayak")
    expect(kayak.anagram("Kayak")).to eq("These words are palindromes and anagrams!")
  end
  it("will check to see if 'No lemons, no melon' (a palindrome phrase with punctuation) is an anagram and a palidrome of itself") do
    lemons = Grams.new("No lemons, no melon")
    expect(lemons.anagram("No lemons, no melon")).to eq("These words are palindromes and anagrams!")
  end
  it("will check to see if 'gddglc' ('google' with no vowels) is word by checking for vowls") do
    gdddlc = Grams.new("gddglc")
    expect(gdddlc.anagram("lddggc")).to eq("Fake word detected..Please enter real word")
  end
  it("will check to see if 'cat' is an antigram of 'rope'") do
    rope = Grams.new("rope")
    expect(rope.anagram("cat")).to eq("These words are antigrams.")
  end
end
