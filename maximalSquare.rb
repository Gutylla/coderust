def maximalSquare(matrix)

  row_count = matrix.length
  col_count = matrix[0].length

  solution = Array.new(row_count) { Array.new(col_count) }

  i = j = 0

  while i < col_count
    solution[0][i] = matrix[0][i].to_i
    i += 1
  end

  while j < row_count
    solution[j][0] = matrix[j][0].to_i
    j += 1
  end

  i = j = 1

  while i < row_count
    j = 1
    while j < col_count
      if matrix[i][j] == '1'
        solution[i][j] = [solution[i-1][j], solution[i-1][j-1], solution[i][j-1]].min + 1
      else
        solution[i][j] = 0
      end

      j += 1
    end

    i += 1
  end

  solution.flatten.max**2

end

matrix =[["1","0","1","0","0"], 
 ["1","0","1","1","1"], 
 ["1","1","1","1","1"], 
 ["1","0","0","1","0"]]

p maximalSquare(matrix)
