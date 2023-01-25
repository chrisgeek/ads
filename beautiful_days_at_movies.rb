# Given a range of numbered days, and a number , determine the number of days in the range that are beautiful. Beautiful numbers are defined as numbers where  is evenly 
# divisible by . If a day's value is a beautiful number, it is a beautiful day. Return the number of beautiful days in the range.

def beautiful_days(values)
  split_val = values.split(' ').map(&:to_i)
  val = split_val[2]
  counter = 0
  days = (split_val[0]..split_val[1]).to_a
  days.each do |i|
    reversed_val = i.to_s.reverse.to_i
    diff = i - reversed_val
    if diff % val == 0
      counter += 1
    end
  end
  counter
end

puts beautiful_days('20 23 6')
