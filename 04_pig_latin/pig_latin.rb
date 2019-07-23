#write your code here
def translate words
    contain = []
    words = words.split
    words.each do |word|
        letters = word.split("")
        letters.each_with_index do |l, i|
            while /[aeiou]/.match?(l) == false
                if l == "u" && letters[i-1] == "q"
                    word = "#{word[i+1..-1] + word[0..i] + "ay"}"
                else
                    word = "#{word[i..-1] + word[0..i-1] + "ay"}"
                end
            end    
        end
        contain.push word
    end
    contain.join(" ")
end



#        words.each do |word|
#            reword = word.split(/([aeiou]\w+)/) 
#            word = "#{reword[1].to_s + reword[0].to_s + "ay"}" 
#            contain.push word
#        end               