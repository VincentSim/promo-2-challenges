def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent

  race_array.map.with_index{|x , i| "#{i + 1}" + "-#{x}!"}.reverse
end




