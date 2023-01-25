def pythagoran_triplet(arr)
  arr.sort!
  squared_arr = arr.map { |x| x**2 }
  left = 0
  right = arr.length - 1
  while left < squared_arr.length
    puts left
    if (squared_arr[left] + squared_arr[left + 1]) == squared_arr[right]
      return "#{squared_arr[left]}, #{squared_arr[left + 1]}, #{squared_arr[right]}"
    elsif (squared_arr[left] + squared_arr[left + 1]) < squared_arr[right]
      left += 1
    else
      right -= 1
    end
  end
end
arr = [1,2,3,3,34,13,12,5]
pythagoran_triplet(arr)

def pythagorean_triplet(a)
  len = a.length
  a.map! { |x| x ** 2 }
  a.sort!
  for i in (len - 1).downto(2)
    x = a[i]
    left = 0
    right = i - 1
    while left < right
      if (a[left] + a[right]) == x
        return "Triplet found #{Math.sqrt(a[left])},#{Math.sqrt(a[right])},#{Math.sqrt(a[i])}"
      elsif (a[left] + a[right]) < x
        left += 1
      else
        right -= 1
      end
    end
  end
  return -1
end

