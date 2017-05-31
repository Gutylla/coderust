def find_highest_index(arr, key)

  low = 0
  high = arr.length

  while low <= high

    mid = low + (high-low)/2

    if arr[mid] <= key
      low = mid+1
    else
      high = mid-1
    end

  end

  return high if arr[high] == key

  -1

end

arr = [ 1,2,4,4,5,5,6,7,8,9]
key = 5
p find_highest_index(arr, key)
