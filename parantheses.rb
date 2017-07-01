def parentheses(n)

  results = []
  helper(results, n, 0, 0, [])

  results

end


def helper(results, n, left, right, temp)
  p '*'*100
  p left
  p right
  p temp.dup.join('')

  if right == n && left == n
    results << temp.dup.join('')
  end

  if left < n
    temp.push('{')
    helper(results, n, left+1, right, temp)
    temp.pop
  end

  if right < left
    temp.push('}')
    helper(results, n, left, right+1, temp)
    temp.pop
  end

end


p parentheses(2)