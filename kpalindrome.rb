def kpalindrome(s, k)

  isKPalDP(s, s.reverse) <= 2*k

end

def isKPalDP(str1, str2)
  n = str1.length

  dp =  Array.new(n+1) { Array.new(n+1) }

  (n+1).times do |i|
    (n+1).times do |j|

      if i == 0
        dp[i][j] = j

      elsif j == 0
        dp[i][j] = i

      elsif str1[i - 1] == str2[j - 1]
        dp[i][j] = dp[i - 1][j - 1]

      else
        dp[i][j] = 1 + [dp[i - 1][j], dp[i][j - 1]].min
      end

    end
  end

  dp[n][n]
end


s= "abrarbra"
k= 1

p kpalindrome(s, k)
