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
names = ['john', 'mary', 'john', 'john', 'james']
arr = [1, 2, 3, 3, 4, 1, 5, 2]
puts tally_elem(names)

def tally_unsorted(arr)
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
puts tally_unsorted(arr)
