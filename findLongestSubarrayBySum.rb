def findLongestSubarrayBySum(sum, arr)
  curr_sum = arr[0]
  start = 0
  n = arr.size
  r = nil

  (1..n).map do |i|
    while (curr_sum > sum && start < i-1)
      curr_sum = curr_sum - arr[start]
      start += 1
    end

    if (curr_sum == sum)
      p 'hello'
      if r
        p '----------'
        p (r.last-r.first) 
        p (start+1 - i)
        r = [start+1, i] if (r.last-r.first) < (i-start)
      else
        r = [start+1, i]
      end
    end

    curr_sum = curr_sum + arr[i] if (i < n)
  end

  r || [-1]
end




s = 12
arr = [1, 2, 3, 7, 5]
p arr
p findLongestSubarrayBySum(s, arr)
