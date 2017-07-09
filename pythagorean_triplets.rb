def pythagorean_triplets(array)

  array.sort!

  result = []

  array.each_with_index do |element, index|

    next if (element == 0)

    low = 0
    high = array.length - 1

    while low < high

      lower = array[low]
      higher = array[high]

      if (lower == 0 || low == index)
        low += 1
        next
      end

      if (higher == 0 || high == index)
        high -= 1
        next
      end

      sum = (lower*lower) + (higher*higher) - (element*element)

      if sum == 0
        result << [lower, higher, element]
        break
      elsif sum < 0
        low += 1
      elsif sum > 0
        high -= 1
      end

    end

  end

  result

end

p pythagorean_triplets([0,1,2,3,4,5])
p pythagorean_triplets([4,5,6,8,10,25,36,77,85,9,40,41])
