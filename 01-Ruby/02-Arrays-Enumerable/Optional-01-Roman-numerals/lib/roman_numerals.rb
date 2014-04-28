def old_roman_numeral(an_integer)
mille = "M"
cinq_cent = "D"
cent = "C"
cinquante = "L"
dix = "X"
cinq = "V"
un = "I"

    a = an_integer / 1000
    b = (an_integer % 1000) / 500
    c = ((an_integer % 1000) % 500) / 100
    d = (((an_integer % 1000) % 500) % 100) / 50
    e = ((((an_integer % 1000) % 500) % 100) % 50) / 10
    f = (((((an_integer % 1000) % 500) % 100) % 50) % 10) / 5
    g = ((((((an_integer % 1000) % 500)  % 100) % 50) % 10) % 5) / 1

  "#{mille}" * a + "#{cinq_cent}" * b + "#{cent}" * c + "#{cinquante}" * d + "#{dix}" * e + "#{cinq}" * f + "#{un}" * g
  #TODO: translate integer in roman number - old-style way
end

def new_roman_numeral(an_integer)
  #TODO: translate integer in roman number - modern-style way
mille = "M"
cinq_cent = "D"
cent = "C"
cinquante = "L"
dix = "X"
cinq = "V"
un = "I"

    a = an_integer / 1000
    b = (an_integer % 1000) / 500
    c = ((an_integer % 1000) % 500) / 100
    d = (((an_integer % 1000) % 500) % 100) / 50
    e = ((((an_integer % 1000) % 500) % 100) % 50) / 10
    f = (((((an_integer % 1000) % 500) % 100) % 50) % 10) / 5
    g = ((((((an_integer % 1000) % 500)  % 100) % 50) % 10) % 5) / 1
      if f + g == 9
        e += 1
        f = 0
        g = 1
        "#{mille}" * a + "#{cinq_cent}" * b + "#{cent}" * c + "#{cinquante}" * d + "#{un}" * g + "#{dix}" * e + "#{un}" * g
      elsif g == 4
        f += 1
        g = 1
        "#{mille}" * a + "#{cinq_cent}" * b + "#{cent}" * c + "#{cinquante}" * d + "#{dix}" * e + "#{un}" * g + "#{cinq}" * f
      else
        "#{mille}" * a + "#{cinq_cent}" * b + "#{cent}" * c + "#{cinquante}" * d + "#{dix}" * e + "#{cinq}" * f + "#{un}" * g
      end


  #TODO: translate integer in roman number - old-style way
end

