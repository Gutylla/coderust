# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    n = nums.length

    prev = nums[0]
    start = 0

    for i in 1..n
        if nums[i] != prev
            start += 1
            nums[i], nums[start] = nums[start], nums[i]
            prev = nums[start]
        end
    end

    nums[0...start]
end

p remove_duplicates([1,1,67,68,99,99,102,102,102])
p remove_duplicates([1,1,1,1,1,1,1,1,1,1])
p remove_duplicates([1,1])
p remove_duplicates([1])
