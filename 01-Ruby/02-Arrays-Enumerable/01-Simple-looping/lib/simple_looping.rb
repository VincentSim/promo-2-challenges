

def sum_with_while(min,max)
  sum = 0

  while min <= max
       sum += min
       min += 1

  end
  sum
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
end

def sum_with_for(min,max)
  sum = 0
  for i in min..max
     sum += i
  end
  sum
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
end

def sum_recursive(min, max)
  if min > max
    raise ArgumentError
  end

  if min == max
    max
  else
    min + sum_recursive(min+1, max)
  end
end



