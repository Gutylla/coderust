def climbingStaircase(n, k, cr=[], r=[])
  r << cr if n == cr.inject(:+)

  (1..k).map do |i|

    ts = cr + [i]
    s = ts.inject(:+)

    if s <= n
      climbingStaircase(n, k, ts, r)
    end

  end

  r
end


p climbingStaircase(4, 2)
