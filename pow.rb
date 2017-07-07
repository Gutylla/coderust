def pow(x, n)

  return 1 if n == 0
  return x if n == 1

  val = pow(x, n/2)

  if n.even?
    w = val * val
  else
    w = val * val * x
  end

end

def pow_of(x, n)
  val = pow(x, n.abs)
  n > 0 ? val : (1.00/val).to_f
end


p pow_of(4,2)
