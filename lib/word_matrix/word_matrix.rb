require 'byebug'

class WordMatrix
  def initialize(matrix)
    raise unless matrix.is_a?(Array)
    @x_length = matrix[0].length
    @y_length = matrix.length
    @word_list = extract_horizontal_word_list(matrix)
    @word_list.concat(extract_vertical_word_list(matrix))
  end

  def find(word)
    @word_list.include? word
  end

  def extract_horizontal_word_list(matrix)
    matrix.map { |line| line.join }
  end

  def extract_vertical_word_list(matrix)
    words = []
    @y_length.times do |y_index|
      word = ''
      @x_length.times do |x_index|
        word += matrix[x_index][y_index]
      end
      words << word
    end
    return words
  end
end
