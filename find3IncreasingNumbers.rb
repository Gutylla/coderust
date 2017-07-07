def find3IncreasingNumbers(arr)
  n = arr.length

  min_so_far = arr[0]
  c_low = nil
  c_mid = nil
  have_candidates = false

  i = 1
  while i < n-1
    if(arr[i] <= min_so_far)
      min_so_far = arr[i]
    elsif !have_candidates || arr[i] <= c_mid
      c_low = min_so_far
      c_mid = arr[i]
      have_candidates = true
    else
      return  [ c_low, c_mid, arr[i] ]
    end
    i += 1
  end

  return -1
end


p find3IncreasingNumbers([11, 8, 12, 6, 13])
