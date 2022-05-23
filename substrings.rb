require 'pry-byebug'
def substrings(word, array)
    hash = Hash.new()
    word_to_arr = word.split(" ")
    array.each do |dictionary_word|
        hash[dictionary_word] = 0
        word_to_arr.each do |words|
            if words.include?(dictionary_word)
                hash[dictionary_word] += 1
            end
        end
    end
    hash.map do |k, v|
        if v == 0
            hash.delete(k)
        end
    end

    #binding.pry
    p words_to_arr
    #p removed_symbols
    return word

end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
