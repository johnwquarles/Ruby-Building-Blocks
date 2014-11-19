def subStrings(string, array)
  return "Please input a string and an array." unless (string.is_a?String and array.is_a?Array)
  stringLower = string.downcase
  results = {}
  array.each do |word|
    subCount = howMany(stringLower, word.downcase)
    results[word] = subCount if subCount > 0
  end
  return results
end

def howMany(string, substring)
  if string.include? substring
    return 1 + howMany(string[string.index(substring) + 1, string.length-1], substring)
  else
    return 0
  end
end