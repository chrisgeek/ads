# Given a string containing brackets, return 1 if the brackets match and 0 if not.
def bracket_matcher(str)
  split_str = str.split('')
  counter = 0
  brackets = ['(', ')']

  split_str.each { |s| counter += 1 if brackets.include? s }
  counter.even? ? '1' : '0'
end

bracket_matcher '((coder)(byte))'
