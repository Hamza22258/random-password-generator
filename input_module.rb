# frozen_string_literal: true

def alphabets_input
  loop do
    print 'Include Alphabets (T or F): '
    alphabets = gets.chomp
    if !alphabets.casecmp('T').zero? && !alphabets.casecmp('F').zero?
      puts 'Enter T or F'
      next
    end
    return alphabets
  end
end

def numeric_input
  loop do
    print 'Include numeric (T or F): '
    numeric = gets.chomp
    if !numeric.casecmp('T').zero? && !numeric.casecmp('F').zero?
      puts 'Enter T or F'

      next
    end
    return numeric
  end
end

def s_characters_input
  loop do
    print 'Include s_characters (T or F): '
    s_characters = gets.chomp
    if !s_characters.casecmp('T').zero? && !s_characters.casecmp('F').zero?
      puts 'Enter T or F'
      next
    end
    return s_characters
  end
end

def length_input
  loop do
    print 'Length of Password (minimum 8): '
    length = gets.chomp
    if length.to_i < 8
      puts 'Length should be greater than 8'
      length = ''
      next
    end
    return length
  end
end

# Validate All the input
def validate_input
  [length_input, alphabets_input, numeric_input, s_characters_input]
end
