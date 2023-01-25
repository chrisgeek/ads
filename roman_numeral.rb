def solution(roman)
  mapping = {
     "M"=>1000,
     "D"=>500,
     "C"=>100,
     "L"=>50,
     "X"=>10,
     "V"=>5,
     "I"=>1
  }
  # split string into characters
  roman.chars.map do |l|
    mapping[l] # replace character with integer value
  end.compact.chunk_while do |i,j|
    i <= j #
  end.map do |chunk| 
    if chunk.first < chunk.last
      chunk.reverse.inject(:-) # handles numerals such as IIX with subtraction
    else
      chunk.sum # chunk is just a list of numerals such as III
    end
  end.sum # sums everything up
end

solution('I')

def to_roman(num)
  roman_numbers = {
    1000 => "M",  
    900 => "CM",  
    500 => "D",  
    400 => "CD",
    100 => "C",  
    90 => "XC",  
    50 => "L",  
    40 => "XL",  
    10 => "X",  
    9 => "IX",  
    5 => "V",  
    4 => "IV",  
    1 => "I",  
    0 => "",  
    }
  return '' if num == 0
  roman_numbers.each do |value, letter|
    return (letter * (num / value)) << to_roman(num % value) if value <= num
  end
  to_roman(num % value)
end

to_roman(4)
