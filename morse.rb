@morse_code = {
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
'--..' => 'Z',
'.----' => '1',
'..---' => '2',
'...--' => '3',
'....-' => '4',
'.....' => '5',
'-....' => '6',
'--...' => '7',
'---..' => '8',
'----.' => '9',
'-----' => '0',
}


# decode_morce 
def decode_char(char)
  @morse_code[char]
end
puts decode_char('-.-')

# decode a word
def decode_word(word)
    @result = ''
    word.split.each { |i| @result.concat(@morse_code[i]) }
    @result
  end
  puts decode_word('-.. ---')

# decode a sentence 
def decode(message)
    @sentence = message.split('   ')
    @decoded_sentence = ''
    @sentence.each do |n|
      @decoded_sentence += "#{decode_word(n)} "
    end
    @decoded_sentence.strip
  end
 puts decode("-- -.--   -. .- -- .")
 puts decode(' .-  -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
