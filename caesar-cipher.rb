def downcase?(char)
  char.ord >= 97 && char.ord <= 122
end

def upcase?(char)
  char.ord >= 65 && char.ord <= 90
end

def caesar_cipher(string, shift_factor)
  cipher_text = ''
  string.each_char do |char|
    if upcase?(char)
      cipher_text += (((char.ord + shift_factor) - 'A'.ord) % 26 + 'A'.ord).chr
    elsif downcase?(char)
      cipher_text += (((char.ord + shift_factor) - 'a'.ord) % 26 + 'a'.ord).chr
    else
      cipher_text += char
    end
  end
  cipher_text
end