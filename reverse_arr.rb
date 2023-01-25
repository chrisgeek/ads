# Reverse an array

def reverse_arr(a)
  left = 0
  right = a.length - 1

  while left < right
    # temp = a[left]
    # a[left] = a[right]
    # a[right] = temp
    a[left], a[right] = a[right], a[left]
    left += 1
    right -= 1
  end
  puts a
end

reverse_arr([1, 2, 3, 4])
