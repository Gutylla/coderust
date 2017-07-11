# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  mapp = [ '', '', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz' ]
  ans = ['']

  digits.size.times do |i|
    tmp = []

    ans.each do |a|

      mapp[digits[i].to_i].chars.each do |x|

        tmp << a + x

      end

    end

    ans = tmp

  end

  ans
end


p letter_combinations('23')
