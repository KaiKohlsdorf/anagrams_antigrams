class Anagrams
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end
  
  def anagram() 
    word_one = @word_one.gsub(/\s+/, "")
    word_two = @word_two.gsub(/\s+/, "")
  
    array_one = word_one.downcase.split("")
    array_two = word_two.downcase.split("")

    if array_one.all? { |array_one| array_two.include?(array_one) } == true && array_one.length == array_two.length
    'These words are anagrams!'
    end
  end
end
