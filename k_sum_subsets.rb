def k_sum_subsets(arr, sum)
  all_subsets = []
  (2 ** arr.size).times do |i|
    subset = []
    i.to_s(2).chars.reverse.each_with_index do |c, j|
      subset << arr[j] if c.to_i == 1
    end
    all_subsets << subset if subset.inject(&:+) == sum
  end
  all_subsets
end


p k_sum_subsets([1, 3, 5, 21, 19, 7, 2, 5], 10)
