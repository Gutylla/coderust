def find_least_common(a1, a2, a3)

  i = j = k = 0

  while i < a1.length && j < a2.length && k < a3.length
    return a1[i] if a1[i] == a2[j] && a1[i] == a3[k]

    min = [ a1[i], a2[j], a3[k] ].min

    if min == a1[i]
      i += 1
    elsif min == a2[j]
      j += 1
    elsif min == a3[k]
      k += 1
    end

  end

  -1

end

a1 = [2, 4, 5, 23, 34, 55, 68, 79, 87, 89, 97, 445, 657, 6878, 7979, 80089]
a2 = [1, 6, 7, 32, 43, 45, 67, 68, 80, 87, 97,  223, 534]
a3 = [0, 5, 8, 9, 21, 23, 34, 34, 45, 65, 67, 97, 334, 8990]

p find_least_common(a1, a2, a3)
