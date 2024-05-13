# frozen_string_literal: true

require('./input_module')

def remove_util
  special_chars = ('!'..'?').to_a
  numbers_array = ('0'..'9').to_a
  numbers_array.each do |n|
    special_chars.delete(n)
  end
  special_chars
end

def generate
  password = []
  length, alphabets, numeric, s_characters = validate_input
  password += (0..9).to_a if numeric.casecmp('T').zero?
  password += ('A'..'Z').to_a if alphabets.casecmp('T').zero?
  password += ('a'..'z').to_a if alphabets.casecmp('T').zero?
  password += remove_util if s_characters.casecmp('T').zero?
  password += (0..9).to_a if password == []
  [password, length]
end

# Main Generator Function
def password_generator
  password, length = generate
  length = 8 if length.to_i < 8
  length = length.to_i
  password.shuffle[0..length].join
end

p "Random Password is #{password_generator}"
