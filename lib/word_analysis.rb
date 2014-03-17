
class WordAnalyzer
  def initialize(words)
    @words=words
  end

  def word_count
    @words.split(' ').count 
  end

  def letter_count
    letter = @words.chars.to_a
    letter.delete_if {|chars| chars == ' '}.count
  end 

  def symbol_count
    @words.split('').delete_if {|char| /[a-zA-Z0-9]/.match(char)}.count
  end

  def common_words
    hash = Hash.new(0)
    @words.split(' ').each do |word|
      hash[word]+=1
    end
    hash.sort_by {|word, value| value}.pop(3)
  end

  def common_letters
    hash = Hash.new(0)
    letter = @words.chars.to_a
    letter.delete_if {|chars| chars == ' '}
    letter.each do |chars|
      hash[chars]+=1
    end
    hash.sort_by {|chars, value| value}.pop(3)
  end

end
