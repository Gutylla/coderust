require 'benchmark/ips'

def stringPermutations(nums)
  nums = nums.chars
  if nums.empty?
    return [[]]
  else
    res = []
    nums.each_with_index do |e, i|
      rest = nums[0, i] + nums[i + 1..-1]
      rest_perms = stringPermutations(rest.join(''))

      rest_perms.each do |perm|
        perm.unshift(e)
      end
      res += rest_perms
    end
    res
  end

  res
end

p stringPermutations('ABC')


# def fact(n)
#   return 1 if n == 0 || n == 1
#   n * fact(n-1)
# end

# def per(s)
#   r = []

#   n = s.length
#   fc = fact(n)

#   j = 1
#   m = 0

#   (fc-1).times do |i|

#     perm = s
#     k = 0

#     while (k != fc/n)

#       while (j != n-1)
#         r << perm.dup

#         swap(perm, j, j+1)

#         i += 1
#         j += 1
#         k += 1
#       end

#       j = 1
#     end

#     m += 1
#     break if m == n
#     swap(s, 0, m)
#   end
#   r
# end

# def swap(s, i, j)
#   temp = s[i]
#   s[i] = s[j]
#   s[j] = temp
# end

# # Benchmark.ips do |x|

# # x.report("recursive") do |times|
# p stringPermutations('ABC').map {|x| x.join }
# # end

# # x.report("iterative") do |times|
# # p per('ABA')
# # end

# # x.report("inbuilt") do |times|
# # p 'ABA'.chars.permutation.map(&:join)
# # end

# # x.compare!

# # end
