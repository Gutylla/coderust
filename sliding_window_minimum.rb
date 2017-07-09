# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  return if nums.size < k

  left_max = Array.new(nums.size)
  left_max[0] = nums[0]
  right_max = Array.new(nums.size)
  right_max[nums.size-1] = nums[nums.size-1]

  i = 1
  while i < nums.size
    left_max[i] = (i % k == 0) ? nums[i] : [left_max[i - 1], nums[i]].max

    j = nums.size-1-i
    right_max[j] = (j % k == 0) ? nums[j] : [right_max[j + 1], nums[j]].max

    i += 1
  end

  sliding_max = Array.new(nums.length-k+1)
  i = j = 0
  while (i+k) <= nums.length
    sliding_max[j] = [right_max[i], left_max[i + k - 1]].max
    i += 1
    j += 1
  end

  sliding_max
end


p max_sliding_window([2,1,3,4,6,3,8,9,10,12,56], 4)
