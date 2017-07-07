def maximal_rectangle(matrix)

  return 0 if matrix.empty? || !matrix[0] || matrix[0].nil?

  max_area = 0
  aux = Array.new(matrix[0].length) {0}

  matrix.map do |row|
    return 0 if row.size != aux.size
    aux = add_rows(row, aux)
    max_area = [ max_area, largest_rectangle_area(aux) ].max
  end

  max_area
end

def add_rows(row, aux)
  arr = []
  row.chars.each_with_index do |e, i|

    if e.to_i == 0
      arr << 0
    else
      arr << e.to_i + aux[i]
    end

  end
  arr
end

def largest_rectangle_area(array)

  return 0 if array.empty?

  positions = [0]
  weights = [array[0]]

  max_area = 0

  i = 1

  while i < array.size

    if weights.last < array[i]
      weights << array[i]
      positions << i
      i += 1
      next
    end

    if weights.last == array[i]
      max_area = [max_area, array[i] * (i - positions.last)].max
      i += 1
      next
    end

    while !weights.empty?
      e = weights.pop
      max_area = [max_area, e * (i - positions.last)].max

      if weights.empty?
        weights << array[i]
        break
      end

      if weights.last > array[i]
        positions.pop
      elsif weights.last == array[i]
        max_area = [max_area, array[i] * (i - positions.last)].max
        positions.pop
      else
        weights << array[i]
        break
      end

    end

    i += 1
  end

  while !weights.empty? && !positions.empty?

    w = weights.pop
    i = positions.pop

    max_area = [ w * (array.length - i), max_area ].max

  end

  max_area
end

# p largest_rectangle_area([1,2,3])

# p maximal_rectangle(["10100","10111","11111","10010"])

p maximal_rectangle ["01", "10"]
