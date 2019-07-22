#write your code here
def translate words
    contain = []
    words = words.split
    words.each do |word|
        reword = word.split(/([aeiou]\w+)/) 
        word = "#{reword[1].to_s + reword[0].to_s + "ay"}" 
        contain.push word
    end
    contain.join(" ")
end