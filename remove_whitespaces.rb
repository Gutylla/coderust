def remove_whitespaces(sentence)

  return if sentence.nil? || sentence.empty?

  read_index = 0
  write_index = 0

  while read_index < sentence.length

    if sentence[read_index] != ' ' && sentence[read_index] != '\t'

      t = sentence[write_index]
      sentence[write_index] = sentence[read_index]
      sentence[read_index] = t

      write_index += 1
    end

    read_index += 1
  end

  p sentence[0..write_index-1]
end

remove_whitespaces("Hello  how are you    ")
