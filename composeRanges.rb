def composeRanges(nums)

  r = []
  i = 0

  while i < nums.length

    str = ""
    j = i+1

    while j < nums.length
      if nums[j-1]+1 == nums[j]
        j += 1
      else
        break
      end
    end

    if j == i+1
      str += "#{nums[i]}"
    else
      str += "#{nums[i]}->#{nums[j-1]}"
    end

    i = j
    r << str
  end

  r

end


p composeRanges [-1, 0, 1, 2, 6, 7, 9]