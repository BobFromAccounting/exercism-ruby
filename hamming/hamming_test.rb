#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming'

# Test data version:
# deb225e Implement canonical dataset for scrabble-score problem (#255)

class HammingTest < Minitest::Test
  def test_identical_strands
    # skip
    assert_equal 0, Hamming.new('A', 'A').compute
  end

  def test_long_identical_strands
    # skip
    assert_equal 0, Hamming.new('GGACTGA', 'GGACTGA').compute
  end

  def test_complete_distance_in_single_nucleotide_strands
    # skip
    assert_equal 1, Hamming.new('A', 'G').compute
  end

  def test_complete_distance_in_small_strands
    # skip
    assert_equal 2, Hamming.new('AG', 'CT').compute
  end

  def test_small_distance_in_small_strands
    # skip
    assert_equal 1, Hamming.new('AT', 'CT').compute
  end

  def test_small_distance
    # skip
    assert_equal 1, Hamming.new('GGACG', 'GGTCG').compute
  end

  def test_small_distance_in_long_strands
    # skip
    assert_equal 2, Hamming.new('ACCAGGG', 'ACTATGG').compute
  end

  def test_non_unique_character_in_first_strand
    # skip
    assert_equal 1, Hamming.new('AGA', 'AGG').compute
  end

  def test_non_unique_character_in_second_strand
    # skip
    assert_equal 1, Hamming.new('AGG', 'AGA').compute
  end

  def test_same_nucleotides_in_different_positions
    # skip
    assert_equal 2, Hamming.new('TAG', 'GAT').compute
  end

  def test_large_distance
    # skip
    assert_equal 4, Hamming.new('GATACA', 'GCATAA').compute
  end

  def test_large_distance_in_off_by_one_strand
    # skip
    assert_equal 9, Hamming.new('GGACGGATTCTG', 'AGGACGGATTCT').compute
  end

  def test_empty_strands
    # skip
    assert_equal 0, Hamming.new('', '').compute
  end

  def test_disallow_first_strand_longer
    # skip
    assert_raises(ArgumentError) { Hamming.new('AATG', 'AAA').compute }
  end

  def test_disallow_second_strand_longer
    # skip
    assert_raises(ArgumentError) { Hamming.new('ATA', 'AGTG').compute }
  end

  # Problems in exercism evolve over time, as we find better ways to ask
  # questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of the top level BookKeeping
  # module.
  #  In your file, it will look like this:
  #
  module BookKeeping
    VERSION = 1 # Where the version number matches the one in the test.
  end
  #
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html

  def test_bookkeeping
    # skip
    assert_equal 1, BookKeeping::VERSION
  end
end
