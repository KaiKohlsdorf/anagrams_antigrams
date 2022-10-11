class Anagrams
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end
  
  def anagram() 
    word_one = @word_one.downcase.delete(' ').gsub(/[^A-Za-z]/, "")
    word_two = @word_two.downcase.delete(' ').gsub(/[^A-Za-z]/, "")

    if word_one !~ /[aeiouy]/ || word_two !~ /[aeiouy]/
      'You need to input actual words!'
    else
      array_one = word_one.split("")
      array_two = word_two.split("")
      if array_one.all? { |letter| array_two.include?(letter) } == true && array_one.length == array_two.length
        'These words or phrases are anagrams!'
        elsif !(array_one & array_two).any?() && array_one.length == array_two.length
        "These words or phrases have no letter matches and are antigrams."
        else 
        "These words or phrases are neither anagrams nor antigrams."
      end
    end
  end
end