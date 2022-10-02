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

    if !(array_one & array_two).any?()
    "These words have no letter matches and are antigrams."
    elsif array_one.all? { |array_one| array_two.include?(array_one) } == true && array_one.length == array_two.length
      'These words are anagrams!'
    elsif word_one =~ /["a", "e", "i", "o", "u", "y"]/ || array_two =~ /["a", "e", "i", "o", "u", "y"]/
      'You need to input actual words!'
    end
  end
end
