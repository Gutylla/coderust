def find_palindrome_substrings(string)

  results = []

  (string.length-1).times do |i|
    check_palindrome(string, i-1, i+1, results) # odd palindromes
    check_palindrome(string, i, i+1, results) # even palindromes
  end

  p results.uniq

end

def check_palindrome(string, i, j, results)

  while i >= 0 && j < string.length

    break if string[i] != string[j]

    results << string[i..j]

    i -= 1
    j += 1

  end
end

find_palindrome_substrings("aabbbaa")

find_palindrome_substrings("iuytyeotyeotyiureytiurey")
