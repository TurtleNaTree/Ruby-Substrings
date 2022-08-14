require "pry"

word = "My mind to me a kingdom is;
Such present joys therein I find,
That it excels all other bliss
That earth affords or grows by kind:
Though much Ii want that most would have,
Yet still my mind forbids to crave …"
dictionary = ["that", "I", "crave"]


def substrings (text, dictionary)
    text_array = text.split
    substring_tally = Hash.new
    substring_tally => {}
    text_array.reduce(0) {|count, substring|
        dictionary.each do |word| 
            unless substring.scan(/#{word}/i).empty? 
                substring_tally[word.downcase] ? substring_tally[word.downcase] += substring.scan(/#{word}/i).count : substring_tally[word.downcase] = 1       
            end
        substring_tally  
        end 
    }
    puts substring_tally
end

substrings(word, dictionary)
