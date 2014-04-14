def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  a_string.downcase.split(//).sort.select{|v| v=~/[a-z]/} == another_string.downcase.split(//).sort.select{|v| v=~/[a-z]/} ? true : false
end

def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
  tableau_1 = a_string.downcase.split(//).select{|v| v=~/[a-z]/}
  tableau_2 = another_string.downcase.split(//).select{|v| v=~/[a-z]/}
  hash_1 = Hash.new
  hash_2 = Hash.new

  tableau_1.each{|x| hash_1[x] = tableau_1.count(x)}
  tableau_2.each{|x| hash_2[x] = tableau_2.count(x)}
  hash_1 == hash_2 ? true : false
end

 puts anagrams_on_steroids?("Monica Lewinsky!", "Nic silky woman")
