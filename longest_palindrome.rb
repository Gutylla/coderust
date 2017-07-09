# @param {String} s
# @return {String}


def longest_palindrome(s)
  S.new(s).a
end

class S
  def initialize(s)
    @s = s
    @start = 0
    @l = 0
    pal_check
  end

  def pal_check
    @s.size.times do |i|
      check_palindrome(i, i)
      check_palindrome(i, i+1)
    end
  end

  def check_palindrome(j, k)
    while j >= 0 && k < @s.length && @s[j] == @s[k]
      j -= 1
      k += 1
    end

    if (@l < k - j - 1)
      @start = j + 1
      @l = k - j - 1
    end
  end

  def a
    @s.slice(@start, @l)
  end
end


p longest_palindrome("babad")
