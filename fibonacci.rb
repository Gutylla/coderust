def get_fibonacci_rec(n, memo={})

  if (n == 0 || n == 1)
    return n
  end

  m1 = nil
  m2 = nil

  # if memo[n-1]
  #   m1 = memo[n-1]
  # else
    m1 = get_fibonacci_rec(n - 1, memo)
  # end

  # if memo[n-2]
  #   m2 = memo[n-2]
  # else
    m2 = get_fibonacci_rec(n - 2, memo)
  # end

  return  m1 + m2
end

def get_fibonacci(n)

  if (n == 0 || n == 1)
    return n
  end

  n_1 = 1
  n_2 = 0
  res = 0

  i = 2
  while (i <= n)
    res = n_1 + n_2
    n_2 = n_1
    n_1 = res
    i+=1
  end

  return res
end
require 'benchmark/ips'

Benchmark.ips do |x|
  x.report("no optimization")    { get_fibonacci_rec(10) }
  x.report("optimized") { get_fibonacci(10) }
  x.compare!
end
