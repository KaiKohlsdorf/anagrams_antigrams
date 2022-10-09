require('rspec')
require('anagram_antigram')

describe("#anagram") do
  it("checks if two words are anagrams") do
    cat = Anagrams.new("cat", "act") 
    expect(cat.anagram()).to(eq("These words or phrases are anagrams!"))
  end

  it("accounts for the possibility that words might have different cases but should still be anagrams") do
    dog = Anagrams.new("Dog", "God")
    expect(dog.anagram()).to(eq("These words or phrases are anagrams!"))
  end

  it("checks that the input has at least one vowel") do
    banana = Anagrams.new("banana", "btn")
    expect(banana.anagram()).to(eq("You need to input actual words!"))
  end

  it("checks if the inputs are antigrams") do
    antigram = Anagrams.new("loud", "skip")
    expect(antigram.anagram()).to(eq("These words or phrases have no letter matches and are antigrams."))
  end

  it("accounts for two sentences being compared as anagrams or 'antigrams'") do
    sentence = Anagrams.new("Elvis Presley.", "Presley lives!")
    expect(sentence.anagram()).to(eq("These words or phrases are anagrams!"))
  end

  it("returns 'You need to input actual words!' for one entry that has vowels and one that does not") do
    user_entry_without_vowels = Anagrams.new("mom","zzz")
    expect(user_entry_without_vowels.anagram()).to(eq("You need to input actual words!"))
  end

  it("returns 'These words are neither anagrams nor antigrams.' for two words or phrases that are neither anagrams nor antigrams") do
    neither = Anagrams.new("cloud", "clomp")
    expect(neither.anagram()).to(eq("These words or phrases are neither anagrams nor antigrams."))
  end

  it("accounts for words that are neither anagrams nor antigrams but have some of the same letters") do
    none = Anagrams.new("wow", "earth")
    expect(none.anagram()).to(eq("These words or phrases are neither anagrams nor antigrams."))
  end
end