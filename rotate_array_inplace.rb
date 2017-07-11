def rotate_array_inplace(array, n)
  l = array.length

  n = n % l
  if n < 0
    n += l
  end

  reverse_array(array, 0, l-1)
  reverse_array(array, 0, n - 1)
  reverse_array(array, n, l - 1)

  array
end

def reverse_array(array, from, to)

  while from <= to
    array[to], array[from] = array[from], array[to]
    from += 1
    to -= 1
  end

end

p rotate_array_inplace([1, 2, 3, 4, 5, 6], 3)
