def med_of_two_separated_array(arr1, arr2)
  (get_median(arr1) + get_median(arr2)) / 2.0
end


def get_median(arr)
  len = (arr.length / 2).floor
  if arr.length.odd?
    arr[len]
  else
    (arr[len - 1].to_f + arr[len].to_f) / 2.0
  end
end

# puts get_median([1,2,3,4,5,6])
puts med_of_two_separated_array([1,2,3,5,5],[1,2,5,9,11])
