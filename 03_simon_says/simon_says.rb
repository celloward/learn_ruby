#write your code here
def echo word
    "#{word}"
end

def shout word
    "#{word.upcase}"
end

def repeat (word, number=2)
    "#{(word + " ") * (number - 1) + word}"
end

def start_of_word word, place
    "#{word[0..(place - 1)]}"
end

def first_word string
    words = string.split
    "#{words[0]}"
end

def titleize string
    title = []
    little_words = ["a", "an", "the", "but", "and", "for", "yet", "in", "from", "to", "over"]
    words = string.split
    words.each_with_index do |single, index|
        if little_words.include?(single) == false || index == 0 || index == -1
            single = single.capitalize
        end
        title.push single
        end
    "#{title.join(" ")}"
end

#words.map.with_index { |single, i| single = single.capitalize unless (little_words.include?(single) == true and i != 0 and i != -1) }  ??

