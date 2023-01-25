def is_anagram?(string1, string2)
  string1.split('').sort == string2.split('').sort ? true : false
end

is_anagram?('chair', 'silent')
