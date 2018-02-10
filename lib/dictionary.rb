def dict_hash #simplifies unix dictionary to hash, key values all unique sorted letters
  @words = {}
  File.open("/usr/share/dict/words") do |file|
    file.each do |line|
      line.strip!
      key = line.chars.sort.join
      if !words.has_key?(key) #if key doesn't exist, store that word
        words.store(key, line)
      else  #if key already exists, append this word to value
        value = words.fetch(key)
        value = value + ' ' + line
        words[key] = value
      end
    end
  end
  puts words
end
