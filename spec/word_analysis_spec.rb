# Given a long string or set of paragraphs, perform some analysis that provides the following:

# Number of each word
# Number of each letter
# Number of each symbol (any non-letter and non-digit character, excluding white space)
# Top three most common words
# Top three most common letters
# Noncore: Number of words only used once
# Noncore: All letters not used in the string

# Use TDD to drive the design of a WordAnalysis class. There should be an 
# instance method defined for each of the bullets listed above.

# Do the work of identifying the desired data structure required to 
# implement each method. Use tests to guide the design and construction of those data structures.

require 'rspec'
require_relative '../lib/word_analysis'

describe 'WordAnalyzer' do

  let(:word_analysis) {WordAnalyzer.new("Hello my name is string and I am a string and I will be analyzed")}

  it 'count the number of each word' do
    expect(word_analysis.word_count).to eq(15)
  end

  it 'count the number of each letter' do
    expect(word_analysis.letter_count).to eq(50)
  end

  it 'count the number of each symbol' do
    expect(word_analysis.symbol_count).to eq(14)
  end

  it 'provides top three common words' do
    expect(word_analysis.common_words).to eq([["and", 2], ["string", 2], ["I", 2]])
  end

  it 'provides top three common letters' do 
    expect(word_analysis.common_letters).to eq([["l", 5], ["n", 6], ["a", 7]])
  end

end