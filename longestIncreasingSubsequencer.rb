def longestIncreasingSubsequence(arr)
  n = arr.length
  lis = Array.new(n) {1}

  (1..n-1).map do |i|
    i.times do |j|
      if arr[i] > arr[j] && lis[j]+1 > lis[i]
        lis[i] = lis[j] + 1
      end
    end
  end

  lis.max
end


p longestIncreasingSubsequence([1, 231, 2, 4, 89, 32, 12, 234, 33, 90, 34, 100])
p longestIncreasingSubsequence([1, 231, 2, 4, 89, 32, 12, 234, 33, 90, 34, 42, 88, 15, 16, 100])
