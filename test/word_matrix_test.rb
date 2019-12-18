require_relative '../lib/word_matrix/word_matrix.rb'
require 'minitest/autorun'

class TestWordMatrix < Minitest::Test
  def test_word_matrix
    matrix = [
      ['F', 'A', 'C', 'I'],
      ['O', 'B', 'Q', 'P'],
      ['A', 'N', 'O', 'B'],
      ['M', 'A', 'S', 'S']]
    assert(WordMatrix.new(matrix).find('FACI'))
    assert(WordMatrix.new(matrix).find('FOAM'))
    assert(WordMatrix.new(matrix).find('OBQP'))
  end
end
