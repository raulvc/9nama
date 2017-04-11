#!/usr/env/ruby

# Solution to 9Nama's exercise
# available on: https://github.com/9Nama/primeira-avaliacao
class FirstExercise
  def initialize
    @sequence = sequence
  end

  # exercise's requested sequence (formatted as an array)
  def sequence
    # NOTE: divisibility precendence: 35 < 7 < 5
    (1..100).map do |n|
      if divisible? n, 35
        # divisible by 35
        'Nama Team'
      elsif divisible? n, 7
        # divisible by 7
        'Team'
      elsif divisible? n, 5
        # divisible by 5
        'Nama'
      else
        n
      end
    end
  end

  def divisible?(number, dividend)
    # true unless number isn't divisible by dividend
    (number % dividend).zero?
  end
end

if caller.length.zero?
  # outputs to stdout the comma separated sequence
  # NOTE: not really a standard design, I'm just hiding this output
  # when this file is imported elsewhere
  puts FirstExercise.new.sequence.join(', ')
end
