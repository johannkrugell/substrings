# declare dictionary of words
phrase = ["below","down","go","going","horn","how","howdy","it","i","low","own",
          "part","partner","sit"]

def substrings(word, dictionary)
  substring_found = []
  dictionary.each do |string|
    if string.include? word 
      
      substring_found << string
      substring_found

    end
  end
  substring_found.reduce(Hash.new(0)) do |substring, count|
    substring[count]+=1  
    p substring
  end
  
end

substrings("go",phrase)
