require 'benchmark/ips'

def string_permutations(str, elmt=[], result=[])
  if str.length == 0
    result << elmt.dup.join('')
  end
  str.each_char do |char|
    t = elmt.dup
    t << char
    string_permutations(str.chars.reject {|x| x == char}.join, t , result)
  end
  result
end

def fact(n)
  return 1 if n == 0 || n == 1
  n * fact(n-1)
end

def per(s)
  r = []

  n = s.length
  fc = fact(n)

  j = 1
  m = 0

  (fc-1).times do |i|

    perm = s
    k = 0

    while (k != fc/n)

      while (j != n-1)
        r << perm.dup

        swap(perm, j, j+1)

        i += 1
        j += 1
        k += 1
      end

      j = 1
    end

    m += 1
    break if m == n
    swap(s, 0, m)
  end
  r
end

def swap(s, i, j)
  temp = s[i]
  s[i] = s[j]
  s[j] = temp
end

# Benchmark.ips do |x|

#   x.report("recursive") do |times|
p string_permutations('123')
#   end

#   x.report("iterative") do |times|
# p per('abc')
#   end

#   x.report("inbuilt") do |times|
#     '123456'.chars.permutation.map(&:join)
#   end

#   x.compare!

# end
