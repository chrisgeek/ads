# Given an array arr[] of size N. The task is to find the sum of the continuos subarray within a arr[] with the largest sum. 
# # Algorithm to find the largest possible continuos sum in an array.


def max_sub_arr_sum(arr)
  max_so_far = arr[0]
  max_ending_here = arr[0]

  for i in 0...arr.length
    max_ending_here = [arr[i], max_ending_here + arr[i]].max
    max_so_far = [max_ending_here, max_so_far].max
  end
  max_so_far
end

def solution2(arr)
  max_so_far = -1.0 / 0.0
  max_ending_here = 0

  for i in 0...arr.length
    max_ending_here += arr[i]
    max_so_far = max_ending_here if max_ending_here > max_so_far
    max_ending_here = 0 if max_ending_here < 0
  end

  max_so_far
end

arr = [-2, -3, 4, -1, -2, 1, 5, -3]
puts max_sub_arr_sum(arr)
# puts solution2(arr)
