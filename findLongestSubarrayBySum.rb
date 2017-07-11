def findLongestSubarrayBySum(sum, arr)
  curr_sum = arr[0]
  start = 0
  n = arr.size
  r = []

  (1..n).map do |i|

    while (curr_sum > sum && start < i-1)
      curr_sum = curr_sum - arr[start]
      start += 1
    end

    if (curr_sum == sum)
      r << arr[start..i-1]
    end

    curr_sum = curr_sum + arr[i] if (i < n)
  end

  r
end




s = 12
arr = [10,1,2, 12, 2, 3, 7, 5, 12, 1,2,3,4,2]
p arr
p s
p findLongestSubarrayBySum(s, arr)
