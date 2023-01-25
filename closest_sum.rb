def closest_sum(arr, val)
  arr.sort!
  left, min_left = 0
  right, min_right = arr.length - 1
  min_sum = 1.0 / 0.0 # infinity
  while left < right
    sum = (arr[left] + arr[right]) - val
    if sum.abs < min_sum
      min_sum = sum.abs
      min_left = left
      min_right = right
    end

    if sum < 0
      left += 1
    else
      right -= 1
    end
  end

  puts "#{arr[min_left]} - #{arr[min_right]}"
end

closest_sum([1, 3, 2, 4, 5], 9)
