def houseRobber(nums)
  return 0 if nums.nil? || nums.empty?

  return nums[0] if nums.length == 1

  dp = []
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max

  (2..(nums.length-1)).map do |i|
    dp[i] = [ dp[i-2]+nums[i] , dp[i-1]].max
  end

  dp[nums.length-1]
end

p houseRobber([18, 13, 21, 61, 52, 16])