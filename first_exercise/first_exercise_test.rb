#!/usr/env/ruby

# I'll go with ruby's built-in unit test library
# as opposed to BDD with rspec for simplicity's sake
require 'test/unit'
require_relative 'first_exercise'

# Solution to 9Nama's exercise (Testing suite)
# available on: https://github.com/9Nama/primeira-avaliacao
class FirstExerciseTest < Test::Unit::TestCase
  def setup
    # obtains sequence for tests
    @first_exercise = FirstExercise.new
  end

  def test_sequence
    # a few silly tests for first exercise's sequence
    sequence = @first_exercise.sequence
    assert_equal sequence.first, 1    
    # NOTE: indexes start with 0
    assert_equal sequence[69 - 1], 69
    assert_equal sequence[35 - 1], 'Nama Team'
    assert_equal sequence[70 - 1], 'Nama Team'
    assert_equal sequence[14 - 1], 'Team'
    assert_equal sequence[42 - 1], 'Team'
    assert_equal sequence[20 - 1], 'Nama'
    assert_equal sequence[50 - 1], 'Nama'
    assert_equal sequence.last, 'Nama'
  end
end
