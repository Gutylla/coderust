def climbingStairs(n)
  fibo(n+1)
end


def fibo(n, h={})

  return n if n <= 1

  if h[n-1]
    fib1 = h[n-1]
  else
    fib1 = fibo(n-1, h)
    h[n-1] = fib1
  end

  if h[n-2]
    fib2 = h[n-2]
  else
    fib2 = fibo(n-2, h)
    h[n-2] = fib2
  end


  fib1 + fib2

end


p climbingStairs(2)