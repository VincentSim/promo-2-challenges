#Encoding: utf-8
#TODO: implement your louchebem translator
  #constraint: you should pick your final random suffix in ["em", "é", "ji", "oc", "ic", "uche", "ès"]
#constraint: one-letter word like "a" or "l" should not be translated
#constraint: word beginning with a vowel should be translated differently. Ex: "atout" may give "latoutoc"
#enhancement: ideally your program should be able to translate any complicated word, eventually embedding special characters
# like "!", or "'".
def louchebemize(sentence)
  phrasansespace = sentence.split(" ")
  translated_sentence_tokens = phrasansespace.map do |word|
    if word.length == 1
      mot_final = word
    elsif 'aeiouy'.include? (word[0] || word[0].downcase)
      mot_final = changer_word(word)
    elsif 'aeiouy'.include? (word[1] || word[1].downcase)
      lottre_debut = word.slice(0)
      word.slice!(0)
      mot = word + lottre_debut
      mot_final = changer_word(mot)
    else
      lettre_debut = word.slice(0)
      deux_lettre = word.slice(1)
      word.slice!(0)
      word.slice!(0)
      mot = word + lettre_debut + deux_lettre
      mot_final = changer_word(mot)
    end
    mot_final
  end
  translated_sentence_tokens.join(" ")
end

def changer_word(x)
  # on tire au sort la terminaison du mot
  terminaison = ["em", "é", "ji", "oc", "ic", "uche", "ès"].shuffle!.last
  "l" + x + terminaison
end




puts louchebemize("rat")

