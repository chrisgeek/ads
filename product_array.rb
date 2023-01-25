# Given an array 'a', return an array where elements == array 'a' - a[i] * a.product

def product_array(arr)
  prod_arr = []
  for i in 0...arr.length
    temp = arr[i]
    arr[i] = 1
    prod_arr << arr.inject(:*)
    arr[i] = temp
  end
  prod_arr
end

arr = [1, 2, 3, 4, 5, 6]
puts product_array(arr)
