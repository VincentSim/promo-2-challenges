def most_common_words(source_text, stop_words, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent word

  text_words = []
  File.open(source_text, "r").each_line do |line|
    line_words = line.downcase.gsub(/\W/," ").split(/\s/)
    line_words.each do |word|
      text_words << word
    end
  end
  text_words.delete_if {|word| word == ""}

  stop_words = []
  File.open(stop_words, "r").each_line do |line|
    stop_words << line.chomp
  end


  hash_of_total_occurences = {}
  hash_of_occurences ={}


  text_words.each do |word|
    if !stop_words.include?(word) && hash_of_total_occurences[word]
      hash_of_total_occurences[word] += 1
    else
      hash_of_total_occurences[word] = 1
    end
  end

  word_ranking = hash_of_total_occurences.to_a.sort {|x,y| y[1] <=> x[1]}

  for i in 0..number_of_word-1
    hash_of_occurences[word_ranking[i][0]] = word_ranking[i][1]
  end

 hash_of_occurences
end