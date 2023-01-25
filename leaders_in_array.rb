# An element is leader if it is greater than all the elements to its right side,the rightmost element is always a leader.
# Time-complexity: O(n)
# Auxiliary-space: O(1)

def array_leader(arr)
  n = arr.length
  leaders = []
  max_from_right = arr[n - 1]
  leaders << max_from_right
  for i in (n - 2).downto(0)
    if arr[i] > max_from_right
      max_from_right = arr[i]
      leaders << max_from_right
    end
  end
  leaders
end
arr = [16, 17, 4, 3, 5, 2]
puts array_leader(arr)
