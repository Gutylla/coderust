def binary_search(array, key)

  low = 0
  high = array.length - 1

  while low <= high

    mid = (low + high)/2

    return mid if array[mid] == key

    if array[mid] < key
      low = mid + 1
    else
      high = mid - 1
    end

  end

  return -1

end

p binary_search([1, 12, 23, 34, 45, 56, 67, 78], 78)
