def regx_match_rec(text, pattern, i, j)
  if (text.length == i && pattern.length == j)
    return true
  end

  if (j < pattern.length - 1 && pattern[j + 1] == '*')
    for k in i .. text.length
      if (regx_match_rec(text, pattern, k, j + 2))
        return true
      end

      if (k >= text.length)
        return false
      end

      if (pattern[j] != '.' && text[k] != pattern[j])
        return false
      end
    end
  elsif (i < text.length && j < pattern.length && (pattern[j] == '.' || pattern[j] == text[i]))
    return regx_match_rec(text, pattern, i + 1, j + 1)
  end

  return false
end

def regx_match2(text, pattern)
  return regx_match_rec(text, pattern, 0, 0)
end