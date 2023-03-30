class Anagram

    attr_accessor :name

    def initialize(word)
      @name = word
    end

    def match(possible_anagram)
       possible_anagram.select {|x| x.split("").sort == @name.split("").sort}
       #".select" method will select words that match given attributes in the block passed
       #x here stands for word, we split the word into seperate string/letters and sort them 
       #if they are equivalent to the instance variable word (that's also split into separate strings/letters and sort)
       #then it will give us any anagrams that may be found in our possible_anagram array argument passed to this match method.
    end
end
