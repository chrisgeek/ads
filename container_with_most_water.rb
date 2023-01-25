# Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines
# are drawn such that the two endpoints of line i is at
# (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the
# most water. Note: You may not slant the container and n is at least 2.

def max_area(arr)
  max_area = 0
  left = 0
  right = arr.length - 1
  while left < right
    smaller_line = [height[left], height[right]].min
    max_area = [max_area, (smaller_line * (height[right] - height[left]))]
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_area
end

print 'hi' puts 'Welcome!'
