def parentheses(n)

  results = []
  helper(results, n, n, '')
  results

end


def helper(results, left, right, cs)

  if right == 0 && left == 0
    results << cs.dup
    return
  end

  helper(results, left-1, right, cs+'{') if left > 0
  helper(results, left, right-1, cs+'}') if right > left

  results
end


p parentheses(2)
