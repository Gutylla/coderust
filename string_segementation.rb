def string_segementation(string, dictionary, results={}, level=0)
  f = Array.new(string.size+1)
  f[0] = true

  i = 0
  while i <= string.length
    j = 0
    while j < i

      if f[j] && dictionary.include?(string[j...i])
        dictionary.delete(string[j...i])
        f[i] = true
        results[level] ||= []
        results[level] << string[j...i]
      end

      j += 1
    end

    level += 1
    i += 1
  end

  f[string.length]
  results
end


d = ["cat", "cats", "and", "sand", "dog"]
s = 'catsanddog'

p string_segementation(s, d)
