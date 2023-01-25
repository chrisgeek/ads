# Find majority element(if exists) in a given array.
# A majority element in an array A[] of size n is an element that appears more than n/2 times 
#Time-complexity: O(n), Auxiliary-space:O(1)

def majority_element(arr)
  len = arr.length
  maj_index = 0
  count = 1
  for i in 1...len
    if arr[i] == arr[maj_index]
      count += 1
    else
      count -= 1
    end
    if count == 0
      maj_index += 1
      count = 1
    end
  end

  candidate = arr[maj_index]
  count = 0

  for i in 0...len
    count += 1 if arr[i] == candidate
  end

  if count > (len / 2)
    candidate
  else
    -1
  end
end
arr = [1,2,1,2,1,2,3,5,6,2,1,8,4,7,1]
puts majority_element(arr)

def majority_elem_hash_approach(arr)
  len = arr.length
  h = tally_elem(arr)
  maximum = h.values.max

  if maximum > (len / 2)
    h.collect { |k, v| k if maximum == v }.compact!
  else
    -1
  end
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

majority_elem_hash_approach([2, 1, 3, 2, 1, 1, 3, 2, 2, 2, 2])
