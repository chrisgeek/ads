
# Create a program that will take in a string as input and, if there are duplicates of more than two alphabetical characters in the string, returns the string with all the extra characters in a bracket.

# For example, the input "aaaabbcdefffffffg" should return "aa[aa]bbcdeff[fffff]g"

# Please also ensure that the input is a string, and return "Please enter a valid string" if it is not.


# - - - - - - - - My Answer - - - - - - - -


def string_parse string
  return 'Please enter a valid string' unless string.is_a? String

  new_arr = []
  answer = ''

  chars = string.split('')
  chars.map do |char|
    if (new_arr[-1].is_a? Array) && (new_arr[-1][0] == char)
      new_arr[-1] << char
    elsif (new_arr[-1] == char) && (new_arr[-2] == char)
      new_arr << [char]
    else
      new_arr << char
    end
  end

  new_arr.map { |el| (el.is_a? Array) ? answer << "[" + el.join + "]" : answer << el }
  answer
end

string_parse('aaaabbcdefffffffg')


#  First, create an empty array and an empty string.
#  Secondly check to see if the submission is, in fact, a string, if not, return an error message.
#  If it is a string, split it into individual chars
#    If the last char is an array && the value stored in that array equal the current char, push it into the array.
#    Else if the last two non-array elements both equal the current char, push char in as an array.
#    Finally, if none of the above works, add the char to the end of the array.

#  Of that created array, ‘.map’ it.
#    If the element is just a char, push it into the string
#    If the element is an array, ‘.join’ it into a string and add brackets.

#  Finally, return the answer string

# - - - - - - - - - alt - - - - - - - -

# use of ‘.gsub’ and regEx is how to make this beautiful.wow.



# def string_parse_2 string
#   string.gsub /(.)\1(\1+)/, '\1\1[\2]' rescue 'Please enter a valid string'
# end
