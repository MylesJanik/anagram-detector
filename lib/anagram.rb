# Your code goes here!
class Anagram
    def initialize(word)
        @word = word.chars.sort(&:casecmp).join
    end

    def match(array)
        @new_array = []
        array.each do |a|
            if a.chars.sort(&:casecmp).join == @word
                @new_array << a
            end
        end
        return @new_array
    end
end