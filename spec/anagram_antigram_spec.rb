require('rspec')
require('anagram_antigram')

describe("#anagram") do
  it("checks if two words are anagrams") do
    cat = Anagrams.new("cat", "act") 
    expect(cat.anagram()).to(eq("These words are anagrams!"))
  end

  it("accounts for the possibility that words might have different cases but should still be anagrams") do
    dog = Anagrams.new("Dog", "God")
    expect(dog.anagram()).to(eq("These words are anagrams!"))
  end
  
    # it("checks if the inputs are words") do

  # it("checks if the inputs are antigrams") do

  # it("accounts for two sentences being compared as anagrams or 'antigrams'") do


end
