require "anagram_findr"

RSpec.describe("Grams#anagram_findr") do
  it("will check to see if 'bury' is an anagram of 'ruby'") do
    ruby = Grams.new("ruby")
    expect(ruby.findr("bury")).to eq("These words are anagrams!")
  end
end
