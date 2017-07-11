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
  p right_max

  sliding_max = Array.new(nums.length-k+1)
  i = j = 0
  while (i+k) <= nums.length
    sliding_max[j] = [right_max[i], left_max[i + k - 1]].max
    i += 1
    j += 1
  end

  sliding_max
end


def side_max(array, k)

  i = 0
  a = [array[0]]

  while i < array.length
    if i%k == 0
      a[i] = [ array[i], a[i-1]].max
    else
      a[i] = array[i]
    end

    i += 1
  end

  a
end
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window1(nums, k)

  return if nums.size < k

  return [] if nums.empty?
  return if nums.size < k

  left_max = side_max(nums, k)
  right_max = side_max(nums.reverse, k).reverse
  p right_max

  sliding_max = Array.new(nums.length - k + 1)
  i = j = 0

  while (i+k) <= nums.length
    sliding_max[j] = [right_max[i], left_max[i + k - 1]].max
    i += 1
    j += 1
  end

  sliding_max
end


arr = [443,5689,7595,850,8493,2866,732,3738,7933,3666,2370,5804,4045,7903,8009,5387,5542,7593,6862,1547,6934,-160,9693,4560,7429,9989,7232,-594,587,6476,9277,4471,5979,6268,2419,6706,-727,1927,7361,9684,5519,2703,1723,5181,3545,4290,9421,4288,1656,1541,9632,1448]
k = 5


# p max_sliding_window1([1,3,-1,-3,5,3,6,7], 3)
# p max_sliding_window([1,3,-1,-3,5,3,6,7], 3)


p max_sliding_window(arr, k)- max_sliding_window1(arr, k)
