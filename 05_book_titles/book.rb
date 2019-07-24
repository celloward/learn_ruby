class Book
   attr_accessor :title
   def title
    little_words = %w[a an the but and for yet in from to over of]
    words = @title.capitalize.split
    words.map.with_index { |word, index|
        !little_words.include?(word) || index == words.count - 1 ? word.capitalize : word
    }.join(" ")
   end
end
