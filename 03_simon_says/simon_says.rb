def echo word
  word
end

def shout word
  word.upcase
end

def repeat (word, number=2)
  ([word] * number).to_a.join(' ')
end

def start_of_word word, place
  word[0..(place - 1)]
end

def first_word string
  string.split.first
end

def titleize string
  little_words = ["a", "an", "the", "but", "and", "for", "yet", "in", "from", "to", "over"]
  words = string.capitalize.split
  words.map.with_index { |word, index|
    !little_words.include?(word) || index == words.count - 1 ? word.capitalize : word
  }.join(" ")
end
