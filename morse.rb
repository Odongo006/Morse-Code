MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_word(word)
  chars = word.split
  decoded_chars = chars.map { |char| decode_char(char) }.join
  decoded_chars
end

def decode_message(message)
  words = message.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

def decode_char(char)
  MORSE_CODE[char]
end

<<<<<<< HEAD:MorseCode.rb
puts decode_word('.-')
puts decode_message('-- -.--   -. .- -- .')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
=======
def decode(line)
  words = line.split('   ')
  decoded_words = words.map do |word|
    word.split.map { |char| decode_char(char) }.join
  end
  decoded_words.join(' ')
end

puts decode('.-')

puts decode('-- -.--   -. .- -- .')

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
>>>>>>> ae416d60be59204a6cd26390a9419c7043a1b8ca:morse.rb
