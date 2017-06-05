def all_subsets(array)

  n = array.length
  subsets_size = 2**n
  all = []

  subsets_size.times do |i|
    binary_i = i.to_s(2).reverse
    current = []

    array.each_with_index do |a, j|

      if binary_i[j] == '1'
        current << a
      end

    end

    all << current.dup
  end

  p all
end


all_subsets([1,2,3])
