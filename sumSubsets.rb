def sumSubsets(arr, num, ci=0, cr=[], r=[])

  cs = cr.inject(:+).to_i

  if cs == num
    r << cr.dup unless r.include?(cr)
  else
    (ci..(arr.length-1)).map do |i|

      cs += arr[i]

      if cs <= num

        cr << arr[i]
        sumSubsets(arr, num, i+1, cr, r)

        cs -= arr[i]
        cr.pop

      end

    end
  end

  r
end


arr = [1, 1, 2, 2, 2, 5, 5, 6, 8, 8]
num = 9

p sumSubsets(arr, num)
