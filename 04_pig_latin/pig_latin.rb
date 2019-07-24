def translate(sentence)
  sentence.split.map do |word|
    first_syllable, rest_of_word = word.split(/(((((?<!q))u)|([aeio]))\w*)/)
    rest_of_word + first_syllable + 'ay'
  end.join(' ')
end
