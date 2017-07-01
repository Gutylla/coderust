require :awesome_print.to_s

def abcd_sum(arr)

  hash = {}
  result = []
  0.upto(arr.length - 1) do |i|
    (i+1).upto(arr.length - 1) do |j|

      if hash[arr[i] + arr[j]]
        result << [hash[arr[i] + arr[j]], [arr[i], arr[j]]]
      else
        hash[arr[i] + arr[j]] = [arr[i], arr[j]]
      end

    end
  end

  result
end


ap abcd_sum([1,2,3,4,5,6,7])
