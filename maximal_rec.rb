def maximalRectangle(matrix)
  return 0 if matrix.empty?

  m = matrix.size
  n = matrix[0].size

  left = Array.new(n) {0}
  right = Array.new(n) {n}
  height = Array.new(n) {0}

  maxA = 0

  i = 0
  while i < m

    cur_left = 0
    cur_right = n
    j = 0

    while j < n
      if(matrix[i][j]=='1')
        height[j] += 1
      else
        height[j] = 0
      end
      j += 1
    end

    j = 0
    while j < n
      if(matrix[i][j]=='1')
        left[j] = [ left[j], cur_left ].max
      else
        left[j] = 0
        cur_left = j+1
      end
      j += 1
    end

    j=n-1
    while j >= 0
      if(matrix[i][j]=='1')
        right[j] = [ right[j], cur_right ].min
      else
        right[j] = n
        cur_right = j
      end
      j -= 1
    end

    puts "row \t:\t #{matrix[i]}"
    puts "right \t:\t #{right}"
    puts "left \t:\t #{left}"
    puts "height \t:\t #{height}"
    p '-------------------'*4

    j=0
    while j < n
      maxA = [ maxA, (right[j]-left[j])*height[j] ].max
      j += 1
    end
    i += 1
    p maxA
  end

  maxA

end

matrix = ["10100","10111","11111","10010"]

p maximalRectangle(matrix)
