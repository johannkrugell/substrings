# declare dictionary of words
phrase = ["below","down","go","going","horn","how","howdy","it","i","low","own",
          "part","partner","sit"]
          
def substrings(word, dictionary)
  # array of substrings found
  substring_found = []
  
  # if phrase is provided split into words
  phrase = word.split(/\W+/)
  
  # for each word in phrase check if a character matches within the length range
  # of the word
  phrase.each do |word|
    dictionary.each do |string|
      if string.match?(/[#{word}]{#{word.length < 3? word.length : 3},#{word.length}}/i)    
        substring_found << string
      end
    end
  end
  
  # declare empty hash
  hash_listing = {}

  # reduce substring found into hash
  substring_found.reduce(Hash.new(0)) do |substring, count|
    substring[count]+=1  
    hash_listing = substring
  end

  # print hash
  p hash_listing
end

substrings("Below",phrase)

