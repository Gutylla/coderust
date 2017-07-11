# @param {String} s
# @param {String} t
# @return {Integer}
def num_distinct(s, t)

  n = s.size
  m = t.size

  dp = Array.new(m+1) { Array.new(n+1) }

  j = 0
  while j <= n
    dp[0][j] = 1
    j += 1
  end

  i = 1
  while i <=m
    dp[i][0] = 0
    i += 1
  end

  m.times do |i|
    n.times do |j|

      if t[i] == s[j]
        dp[i+1][j+1] = dp[i][j] + dp[i+1][j]
      else
        dp[i+1][j+1] = dp[i+1][j]
      end

    end
  end

  dp[m][n]
end

p num_distinct('ashish', 'ih')
