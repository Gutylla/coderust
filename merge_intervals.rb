def merge_intervals(array)

  result = []
  result.push(array.first)

  array.map do |interval|

    x1 = interval[0]
    y1 = interval[1]
    x2 = result.last[0]
    y2 = result.last[1]

    if y2 >= x1 || x2 <= y1
      result.last[0] = [x1, x2].min
      result.last[1] = [y1, y2].max
    else
      result.push(interval)
    end

  end

  result

end

p merge_intervals([ [3, 12], [1,5] ,[3,7] , [-3,-2] , [-5,-1], [4,6] , [-16,18] , [6,8] ,[10,12] ,[11,15], [-11, 23] ])