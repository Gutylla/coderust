# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)

  num_hash = {}
  max_length = 0

  nums.each do |num|

    unless num_hash.key? num
      left = num_hash[num-1] ? num_hash[num-1] : 0
      right = num_hash[num+1] ? num_hash[num+1] : 0
      sum = left + right + 1

      num_hash[num] = sum

      max_length = [max_length, sum].max

      num_hash[num - left] = sum
      num_hash[num + right] = sum
    end

  end

  max_length
end

p longest_consecutive [4,7,1,2,3]

p longest_consecutive [100, 4, 200, 1, 5]
