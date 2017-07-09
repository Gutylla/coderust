# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
def combination_sum3(k, n)

  helper(k, n, (1..9).to_a)

end

def helper(k, target, candidates, current_items=[], results=[])

  if current_items.size == k
    if current_items.inject(:+) == target
      results << current_items.dup
      return results
    else
      return
    end
  end

  candidates.size.times do |i|

    ts = current_items.inject(:+).to_i
    ts += candidates[i]

    if ts <= target
      current_items << candidates[i]
      helper(k, target, candidates[i+1..-1], current_items, results)
      current_items.pop
    end


  end

  results
end


p combination_sum3(2, 18)