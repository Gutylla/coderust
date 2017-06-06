def all_sum(target_sum, current_sum=0, index=1, current_set=[], result=[])

  if current_sum == target_sum
    result << current_set.dup
  end

  index.upto(target_sum-1) do |i|

    temp_sum = current_sum + i
    if temp_sum <= target_sum
      current_set << i
      all_sum(target_sum, temp_sum, i, current_set, result)
      current_set.pop
    else
      return
    end
  end

  result

end

p all_sum(4)