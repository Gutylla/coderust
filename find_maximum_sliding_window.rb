def find_maximum_sliding_window(array, window_size)

  result = []

  return [] if window_size > array.size

  window = []

  (window_size).times do |i|

    while window.length > 0 && array[i] >= array[window.last]
      window.pop
    end

    window.push(i)
  end

  result.push(array[window.first])
  p window

  window_size.upto(array.length-1) do |i|
    while window.length > 0 && array[i] >= array[window.last]
      window.pop
    end

    if window.length > 0 && window.first <= i-window.size
      window.shift
    end

    window.push(i)
    result.push(array[window.first])
  end

  result

end


p find_maximum_sliding_window([-4, 2, -5, 1, -1, 6], 3)
