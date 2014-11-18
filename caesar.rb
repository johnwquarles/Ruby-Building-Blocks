def caesar_cipher(string, shift)
    
  unless string.is_a?String and shift.is_a?Integer
    return "Can't do it! Please provide a string and an integer as arguments."
  end
    
  letters = string.split("")
  aNums = letters.map { |i| i.ord }
  newLetters = aNums.map do |i|
    
    if i<= 90 && i >= 65                       #caps
      ( ( (i - 65 + shift) % 26 ) + 65).chr
    elsif i<= 122 && i >= 97                   #lowercase
      ( ( (i - 97 + shift) % 26 ) + 97).chr
    else                                      #non-letters
      i.chr
    end
  end    
    
  return newLetters.join
end