# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  i = 0
  j = 0
  while i < s.size
    if s[i] == p[j] || p[j] == '.'
      i += 1
      j += 1
    elsif p[j] == '*'
      prev_char = p[j-1]
      while i < s.size && (prev_char == s[i] || prev_char == '.')
        i += 1
      end
      j += 1
    else
      return false
    end
  end

  p j
  j == p.size ? true : false
end

s = "aab"
p = "c*a*b"

p  is_match(s, p)