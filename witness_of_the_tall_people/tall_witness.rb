class TallWitness
  def initialize(heights)
    raise unless heights.is_a?(Array)

    @heights = heights
    @length = heights.count
    @count = 0
  end

  def witnesses
    @heights.each_with_index do |witness_height, index|
      @count += 1 if contains_higher_value_than(@heights.last(@length - (index + 1)), witness_height) == false
    end
    @count
  end

  def contains_higher_value_than(array, value)
    array.select { |height| height >= value }.any?
  end
end
