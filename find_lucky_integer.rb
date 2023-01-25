# Given an array of integers arr, a lucky integer is an integer which has a frequency in the array equal to its value.

# Return a lucky integer in the array. If there are multiple lucky integers return the largest of them. If there is no lucky integer return -1.

# Javascript
# var findLucky = function(arr) {
#     let lucky = [-1];
#     let numObj = {};
#     for (num of arr) {
#         numObj[num] ? numObj[num] += 1 : numObj[num] = 1;
#     }
#     let nums = Object.keys(numObj); 
#     let frequencies = Object.values(numObj);
#     for (let num in nums) {
#         if (nums[num] == frequencies[num]) {
#             lucky.push(frequencies[num]);
#         }
#     }
#     if (lucky.length === 1) {
#         return lucky;
#     } else {
#         return Math.max(...lucky);
#     }
# };

# Ruby
def lucky_num(arr)
  temp = []
  arr.tally.each { |k, v| temp << k if k == v }
  # tally_elem(arr).each { |k, v| temp << k if k == v }

  temp.count.zero? ? -1 : temp.max
end

def tally_elem(arr)
  i = 0
  j = 1
  arr.sort!
  val = arr.product([1]).to_h
  while i < arr.length
    val[arr[i]] += 1 if arr[i] == arr[j]
    i += 1
    j += 1
  end
  val
end

arr = [2, 2, 2, 3, 3]
puts lucky_num(arr)
