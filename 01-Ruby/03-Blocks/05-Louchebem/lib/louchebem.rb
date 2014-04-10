# Encoding: utf-8

def louchebemize(word)
  #TODO: implement your louchebem translator
  #constraint: you should pick your final random suffix in ["em", "é", "ji", "oc", "ic", "uche", "ès"]
#constraint: one-letter word like "a" or "l" should not be translated
#constraint: word beginning with a vowel should be translated differently. Ex: "atout" may give "latoutoc"
#enhancement: ideally your program should be able to translate any complicated word, eventually embedding special characters
# like "!", or "'".
  if word.length == 1
    mot_final = word
  elsif 'aeiouy'.include? (word[0] || word[0].downcase)
   mot_final = changer_word(word)
  else
    lettre_debut = word.slice(0)
    word.slice!(0)
    mot = word + lettre_debut
   mot_final = changer_word(mot)
  end
  "#{mot_final}"
end

def changer_word(x)
#on tire au sort la terminaison du mot
terminaison = ["em", "é", "ji", "oc", "ic", "uche", "ès"].shuffle!.last
#on ajout la terminaison au mot
"l" + x + terminaison
end




puts louchebemize("l")

