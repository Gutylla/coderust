def factorial(n)
  n < 2 ? 1 : n * factorial(n-1)
end

def find_kth_permutation(v, k, result=[])

  return if !v || v.length == 0

  n = v.length

  count = factorial(n-1)
  selected = ((k-1)/count).floor

  result << v[selected]
  k = k - (count * selected)

  v.delete_at(selected)

  find_kth_permutation(v, k, result)

  result
end


p find_kth_permutation([1,2,3], 3)
