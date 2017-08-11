def first_anagram?(str1, str2)
  anagram_arr = str1.chars.permutation
  anagram_arr.include?(str2.chars)
end

# p first_anagram?("dog", "god") # => true
# p first_anagram?("dog", "cat") # = > false

def second_anagram?(str1, str2)
  str1.chars.each do |char1|
    str2.delete!(char1)
    str1.delete!(char1)
  end
  str1.empty? && str2.empty?
end

# p second_anagram?("dog", "god") # => true
# p second_anagram?("dog", "cat") # => false
# p second_anagram?("asesaweiofn", "nfoiewasesa")
# p second_anagram?("longerword", "shrtrwrd")

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

# def third_anagram?(str1, str2)
#   sorted_strings = [str1, str2].map do |str|
#     str.split('').sort.join
#   end
#
#   sorted_strings.first == sorted_strings.last
# end

# p third_anagram?("dog", "god") # => true
# p third_anagram?("dog", "cat") # => false

def fourth_anagram?(str1, str2)

  str1_freq = Hash.new(0)
  str2_freq = Hash.new(0)
  str1.chars.each { |char| str1_freq[char] += 1 }
  str2.chars.each { |char| str2_freq[char] += 1 }
  str2_freq == str1_freq

end

p fourth_anagram?("dog", "god") # => true
p fourth_anagram?("dog", "cat") # => false

def fourth_anagram_bonus?(str1, str2)
  hash = Hash.new { |h, k| h[k] = ""}

  str1.chars.sort.each_with_index do
    |char, idx| hash[char] = str2.chars.sort[idx]
  end

  hash.keys == hash.values
end

# p fourth_anagram_bonus?("dog", "god") # => true
# p fourth_anagram_bonus?("dog", "cat") # => false
# p fourth_anagram_bonus?("abcde", "abcddde")
