def get_fibonacci_rec(n)

  if (n == 0 || n == 1)
    return n
  end

  return get_fibonacci_rec(n - 1) + get_fibonacci_rec(n - 2)
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
