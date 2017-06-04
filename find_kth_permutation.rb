def factorial(n)
  if (n == 0 || n == 1)
    return 1
  end
  return n * factorial(n - 1)
end

def find_kth_permutation(v, k, result=[])
  p '*'*100
  p Time.now
  p "k : #{k}"
  if (!v || v.length == 0)
    return
  end

  n = v.length

  count = factorial(n - 1)
  p "count : #{count}"
  selected = ((k-1) / count).floor
  p "selected : #{selected}"
  result << v[selected]
  v.delete_at(selected)
  p "result : #{result}"
  p "v : #{v}"
  k = k - (count * selected)

  find_kth_permutation(v, k, result)

  result
end

p find_kth_permutation([1,2,3,4], 8)
