  # TODO: implement the method :)
def array_to_hash(array)
    hash = Hash.new
    array.each_with_index do | v , i |
      if block_given?
        hash[ yield(i) ] = v
      else
          hash[ i ] = v
      end
    end
  hash
end








puts array_to_hash(["pierre", "paul"])