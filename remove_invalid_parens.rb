def remove_invalid_parentheses(s)
  return [""] if !s.include?('(') || !s.include?(')')
  ans = []
  remove(s, ans, 0, 0, ['(', ')'])
  return ans;
end

def remove(s, ans, last_i, last_j, par)
  counter = 0
  (last_i...s.length).map do |i|

    counter += 1 if s[i] == par[0]
    counter -= 1 if s[i] == par[1]

    next if counter >= 0

    (last_j..i).map do |j|

      if (s[j] == par[1] && (j == last_j || s[j- 1] != par[1]))
        remove(s[0...j] + s[(j+1)..-1], ans, i, j, par)
      end
    end

    return

  end

  if (par[0] == '(')
    remove(s.reverse, ans, 0, 0, [')', '('])
  else
    ans << s.reverse
  end

  ans
end

p remove_invalid_parentheses(")(")
