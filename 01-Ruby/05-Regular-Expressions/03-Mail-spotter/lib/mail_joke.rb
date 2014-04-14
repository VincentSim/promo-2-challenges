# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided
  e_mail = email.match(/^\w+([-_.]?\w+)+[@](\w+[-_]?)+[.]\w+/)
  prenom = email.match(/(^\w+([-_]?(\w+)))/)
  nom = email.match(/^(\w+)[-]?(\w+)\.(\w+)/)
  log = email.match(/((\w+)\.+\w+)$/)
  term = email.match(/(com|fr|eu|org)$/)
  if  e_mail == nil
    puts "ArgumentError"
  elsif email.include?("gmail")
     "#{prenom[1]}, you're an average but modern person"
  elsif email.include?("live")
    "#{prenom[1]} #{nom[3]}, aren't you born before 1973?"
  elsif term == nil
    "Sorry #{prenom[1]}, we don't know how to judge '#{log[1]}'"
  else
      "Well done #{prenom[1]}, you're skilled and capable"
  #nom = e_mail.match(/(\.)+(\w+)/)
#e_mail.match(/^\w+([-_.]?\w+)+[@](\w+[-_]?)+[.]\w+/)
#if email.include?("gmail")
  #{}"Well done #{prenom[2]}, you're skilled and capable"
  end
end


#puts "boris@gmail.com".match(/(\w+|\.)+@(live|gmail|yahoo)+\./)
#puts "vinvin@gmail.fr".include?("eu"||"com")
#puts "vincent.simon@gadz.org".match(/^\w+([-_.]?\w+)+[@](\w+[-_]?)+[.]\w+/)
