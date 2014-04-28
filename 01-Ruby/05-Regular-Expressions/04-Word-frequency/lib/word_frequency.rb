def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words
  #most_common_words('source-text.txt', 3)
    #File.open('lib/source-text.txt', "r").each_line do |line|
  #puts line
#line.inject(Hash.new(0)) {|hash,word| hash[word] += 1; hash }
end

tableau = []
 File.open('lib/source-text.txt', "r").each_line do |line|
   line.split.each_with_object(Hash.new(0)) {|word, hash| hash[word] += 1; hash}

end

#tableau_stop = []
#File.open('lib/stop_word.txt', "r").each_line do |line|
   #line.split.each_with_object(Hash.new(0)) {|word, hash| hash[word] += 1; hash}
#end

tableau
#tableau_stop