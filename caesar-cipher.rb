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

def shift_char(char, shift)
  # placeholder method
end

