# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)
  for i in (1..number_of_exercises) do
    counter = 0
    until counter == i do
      counter += 1
      print "hop! "
    end
    print 'One more time..' + "\n"
    # Reset counter to 0 for the next exercise
  end
end

hop_hop_hop(6)
