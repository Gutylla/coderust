def string_segementation(string, dictionary, level = 0)

  0.upto(string.length-1) do |i|

    p level.to_s +  ' -> ' + string[0..i]

    if dictionary.include?(string[0..i])
      return true if string[i+1..-1].empty?
      return true if string_segementation(string[i+1..-1], dictionary, level+1)
    end

  end

  false
end


d = %w(a apple pear pier pie p p l)
s = 'applepieaaaaa'

p string_segementation(s, d)
