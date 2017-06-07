def is_match(str, pattern)
  str_index = 0
  pattern_index = 0
  m = 0
  asterix_index = -1

  while str_index < str.length

    if pattern_index < pattern.length && (pattern[pattern_index] == '?' || str[str_index] == pattern[pattern_index])
      str_index += 1
      pattern_index += 1

    elsif pattern_index < pattern.length && pattern[pattern_index] == '*'
      asterix_index = pattern_index
      m = str_index
      pattern_index += 1

    elsif asterix_index != -1

      pattern_index = asterix_index + 1
      m += 1
      str_index = m

    else

      return false
    end
  end

  pattern_index += 1 while pattern_index < pattern.length && pattern[pattern_index] == '*'

  pattern_index == pattern.length
end


p is_match('aabbbbbcdda', 'a*bb*cdda')
p is_match('aabbbbbcdda', 'a*bb*?dda')
p is_match('aabbbbbcdda', 'a*b*c*da')
p is_match('aabbbbbcdda', 'aab*e*cd*a')
p is_match('aabbbbbcdda', 'a*b*c*d*a*')
p is_match('aabbbbbcdda', '?*b*c*d*a*')
p is_match('aabbbbbcdda', 'aabbbbbcdda')