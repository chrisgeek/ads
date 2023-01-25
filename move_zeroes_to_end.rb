# Given an array of random numbers, Push all the zero’s of a given array to the end of the array
# Time Complexity: O(n),Auxiliary Space: O(1)
def move_zeroes(arr)
  for i in 0...arr.length
    if arr[i] == 0
      arr << 0
      arr[i] = nil
    end
  end
  arr.compact!
end

move_zeroes([1,2,0,3,0,4,0,5,0,0,6])
