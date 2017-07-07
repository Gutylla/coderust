# @param {Integer[]} heights
# @return {Integer}
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
p "[2,3,4,2] #{largest_rectangle_area([2,3,4,2])}"
p "[2,3,4,1] #{largest_rectangle_area([2,3,4,1])}"
p "[5,4,5] #{largest_rectangle_area([5,4,5])}"
p "[4,5,4] #{largest_rectangle_area([4,5,4])}"
p "[1,2,3,1,2] #{largest_rectangle_area([1,2,3,1,2])}"
