require "pry"

word = "My mind to me a kingdom is;
Such present joys therein I find,
That it excels all other bliss
That earth affords or grows by kind:
Though much I want that most would have,
Yet still my mind forbids to crave …"
dictionary = ["that", "I", "crave"]


def substrings (text, dictionary)
    text_array = text.split
    substring_tally = Hash.new
    substring_tally => {}
    text_array.reduce(0) {|count, substring|
        dictionary.each do |word| 
            if word.downcase == substring.downcase 
                substring_tally[substring.downcase] ? substring_tally[substring.downcase] += 1 : substring_tally[substring.downcase] = 1       
            end
        substring_tally  
        end 
    }
    print substring_tally
end

substrings(word, dictionary)