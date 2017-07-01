def mapDecoding(message)

  total      = 1
  n          = message.size
  prev_total = total
  i          = n-1

  while i >= 0

    current_char    = message[i].to_i
    adjact_char     = message[i..i+1].to_i

    current_count   = (current_char == 0) ? 0 : total

    current_count  += prev_total if i < n-1 && current_char > 0 && adjact_char < 27

    prev_total      = total
    total           = current_count

    i -= 1
  end

  message.nil? ? 0 : total%((10**9)+7)
end


p mapDecoding('0')
