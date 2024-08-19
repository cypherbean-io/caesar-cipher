# Method to break down the string into an array of characters and perform shift if the character is a letter
def caesar_cipher(string, shift)
  string.split('').map do |char|
    if char.match(/[a-zA-Z]/)
      shift_char(char, shift)
    else
      char
    end
  end.join('')
end

# Method to shift the character by the shift value
def shift_char(char, shift)
  shift = shift % 26
  char = char.ord
  if char.between?(65, 90)
    char = ((char + shift - 65) % 26) + 65
  elsif char.between?(97, 122)
    char = ((char + shift - 97) % 26) + 97
  end
  char.chr
end

puts caesar_cipher('Sweet Home Alabama', 20)
