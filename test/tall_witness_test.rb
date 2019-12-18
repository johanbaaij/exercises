require_relative '../lib/tall_witness/tall_witness.rb'
require 'minitest/autorun'

class TestTallWitness < Minitest::Test
  def test_tall_witness
    assert_equal(3, TallWitness.new([3, 6, 3, 4, 1]).witnesses)
    assert_equal(2, TallWitness.new([6, 3, 3, 3, 3]).witnesses)
    assert_equal(1, TallWitness.new([6, 3, 3, 3, 8]).witnesses)
  end
end
