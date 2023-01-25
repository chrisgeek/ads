# Given a sorted array arr[] and a number x, write a function that counts the occurrences of x in arr[]

# using the tally method in ruby 2.7
def frequency(arr, val)
  arr.sort!
  freq = arr.tally
  freq[val]
end
# arr = [1, 1, 2, 2, 2, 2, 3, 3]
# frequency(arr, 1)

def freq(arr, val)
  arr.sort!
  i = 0
  arr.each do |e|
    i += 1 if e == val
  end
  i
end
arr = [1, 1, 2, 2, 2, 2, 3, 3]
frequency(arr, 2)
