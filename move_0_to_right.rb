def move_zeros_to_right(arr)

  len = arr.length
  read_index = write_index = len - 1

  while read_index >= 0

    if arr[read_index] != 0
      arr[write_index] = arr[read_index]
      write_index -= 1
    end

    read_index -= 1
  end

  while write_index >= 0
    arr[write_index] = 0
    write_index -= 1
  end

  arr
end

arr = [ 2, 3, 4, 0, 5, 0, 6, 0, 7, 0]
p arr
p move_zeros_to_right(arr)
