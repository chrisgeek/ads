def fixed_point(arr)
  arr.each_with_index do |val, ind|
    if val == ind
      return "value = #{val}, index = #{ind}"
    end
  end
  -1
end

arr = [1, 1, 2, 5, 6, 7]
fixed_point(arr)
