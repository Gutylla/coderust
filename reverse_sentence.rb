def reverse_sentence(sentence)
  reverse(sentence)
  to = 0

  while true

    to += 1 if sentence[to] == ' '
    from = to

    from += 1 while sentence[from] && sentence[from] != ' '

    reverse(sentence, to, from-1)

    to = from

    break if to >= sentence.length-1

  end

  sentence
end

def reverse(string, to=0, from=string.length-1)

  while to < from
    t = string[to]
    string[to] = string[from]
    string[from] = t

    to += 1
    from -=1
  end

  string
end

sentence = "The quick fox jumps over the lazy dog"
p sentence
p reverse_sentence(sentence)
