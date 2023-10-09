def get_index(word)
    vowels = ["a","e","i","o"]
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y","z","u" ]
    index = 0
    if word.downcase.start_with?("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y","z","u" )
        for i in (0..(word.length-1)) do 
            if consonants.include? word[i] 
                index = word.index(word[i])
            end
            if vowels.include? word[i]
                index = word.index(word[i])
                break 
            end
        end  
    return index  
    end
end


def word_ay(word)
    vowels = ["a","e","i","o",'u']
    if word.downcase.start_with?('a','e','i','o')
        return word + "ay"   
    end
    if word.downcase.start_with?("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y","z")
        index = get_index(word)
        return word[index..-1] + word[0..index-1] + "ay"
    end
end

def translate(text)
    array = text.split
    ay_array = []
    for i in (0..(array.length-1)) do
        ay_array << word_ay(array[i])
    end
    return ay_array.join(" ")
end