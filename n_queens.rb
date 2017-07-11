def is_valid_move(proposed_row, proposed_col, current)

  proposed_row.times do |i|
    diagonal_offset = proposed_row - i
    return false if (current[i] == proposed_col || (current[i] - proposed_col).abs == diagonal_offset.abs)
  end

  true
end

def solve_n_queens_rec(n, row=0, current=Array.new(n), results=[])
  if (row == n)
    results.push(current.dup)
    return
  end

  n.times do |i|
    if (is_valid_move(row, i, current))
      current[row] = i
      solve_n_queens_rec(n, row+1, current, results)
    end
  end

  results
end

p solve_n_queens_rec(4)
