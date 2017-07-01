def findLongestSubarrayBySum(s, arr, cs=[], r=[])

  if cs.inject(:+) ==  s
    r << cs.dup
    return
  end

  arr.size.times do |i|
    ts = cs
    ts << arr[i]

    if ts.inject(:+) <= s
      findLongestSubarrayBySum(s, arr[i+1..-1], ts, r)
    end

  end

  r
end


s = 12
arr = [1, 2, 3, 7, 5]

findLongestSubarrayBySum(s, arr)
