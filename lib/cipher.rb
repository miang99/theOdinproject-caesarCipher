def cipher(word, num)
    result = checking(word.split(''), num)
    result.join('')    
end

def checking(word, num)
    alphabet = ('a'..'z').to_a
    alphabet_up = ('A'..'Z').to_a
    word.map do |char|
        if alphabet.include? char
            change(alphabet, char, num)
        elsif alphabet_up.include? char
            change(alphabet_up, char, num)
        end            
    end
end

def change(alphabet, char, num)
    len = alphabet.length
    index = alphabet.find_index(char)
    alphabet[index + num - len]
end
