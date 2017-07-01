def longestPath(input)
     paths = input.split("\n")
     stack = Array.new(paths.length+1)
     maxLen = 0
        paths.each do |s|
            p s
            lev = s.chars.index('\t').to_i+1
            curLen = stack[lev+1].to_i
            stack[lev+1] = stack[lev].to_i + s.length - lev + 1
            if s.include?(".")
                maxLen = [maxLen, curLen-1].max
            end
        end
    return maxLen;
end


p longestPath "user\n\tpictures\n\tdocuments\n\t\tnotes.txt"