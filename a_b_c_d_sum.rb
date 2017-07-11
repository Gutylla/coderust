require :awesome_print.to_s

def abcd_sum(arr, target)

  hash = {}
  result = []
  0.upto(arr.length - 1) do |i|
    (i+1).upto(arr.length - 1) do |j|

      if hash[arr[i] + arr[j]] && hash[arr[i] + arr[j]] - arr[i] - arr[j] == 0
        result << [hash[arr[i] + arr[j]], [arr[i], arr[j]]].flatten
      else
        hash[arr[i] + arr[j]] = arr[i] + arr[j]
      end

    end
  end

  result
end


p abcd_sum([1,0,-1,0,-2,2], 0)
