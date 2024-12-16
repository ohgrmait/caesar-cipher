# rubocop:disable Naming/FileName,Lint/MissingCopEnableDirective

# frozen_string_literal: true

def downcase?(char)
  char.ord >= 97 && char.ord <= 122
end

def upcase?(char)
  char.ord >= 65 && char.ord <= 90
end

def caesar_cipher(string, shift_factor) # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
  cipher_text = ''
  string.each_char do |char|
    cipher_text += if upcase?(char)
                     ((((char.ord + shift_factor) - 'A'.ord) % 26) + 'A'.ord).chr
                   elsif downcase?(char)
                     ((((char.ord + shift_factor) - 'a'.ord) % 26) + 'a'.ord).chr
                   else
                     char
                   end
  end
  cipher_text
end
