def mapDecoding(message)

  total      = 1
  n          = message.size
  prev_total = total
  i          = n-1

  while i >= 0

    one_digit    = message[i].to_i
    both_digits     = message[i..i+1].to_i

    current_count   = (one_digit == 0) ? 0 : total

    current_count  += prev_total if i < n-1 && one_digit > 0 && both_digits < 27

    prev_total      = total
    total           = current_count

    i -= 1
  end

  message.nil? ? 0 : total%((10**9)+7)
end


p mapDecoding('0')
