# Given a non-empty array of integers, every element appears twice except for one. Return that one element.
def non_duplicate(arr)
  tally_elem(arr).each { |k, v| return k if v == 1 }
  -1
end

def tally_elem(arr)
  i = 0
  j = 1
  arr.sort!
  val = arr.product([1]).to_h
  while i < arr.length
    val[arr[i]] += 1 if arr[i] == arr[j]
    i += 1
    j += 1
  end
  val
end
arr = [1, 8, 2, 1, 4, 4, 2]
non_duplicate(arr)
