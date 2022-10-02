require('rspec')
require('anagram_antigram')

describe(Anagrams) do
  describe("#anagram") do
    it("checks if two words are anagrams") do
      cat = Anagrams.new("cat", "act") 
      expect(cat.anagram()).to(eq("These words are anagrams!"))
    end
  end
end