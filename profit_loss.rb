def profit_loss(array)

  current_buy = array[0]
  global_sell = array[1]
  global_profit = global_sell - current_buy

  1.upto(array.length-1) do |i|

    current_profit = array[i] - current_buy

    if current_profit > global_profit
      global_profit = current_profit
      global_sell = array[i]
    end

    if array[i] < current_buy
      current_buy = array[i]
    end

  end

  [ global_sell-global_profit, global_sell ]

end


p profit_loss([8 , 5 , 12 , 9 , 19])
