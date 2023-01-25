# Given a time in AM/PM format, convert it to military (24-hour) time.
#
# Note: Midnight is "12:00:00AM" on a 12-hour clock, and "00:00:00" on a 24-hour clock. Noon is "12:00:00PM" on a 12-hour clock, and "12:00:00" on a 24-hour clock.
#
# Input Format :: A single string containing a time in 12-hour clock format (i.e.: hh:mm:ssAM or hh:mm:ssPM).
#
# Output Format
# Convert and print the given time in 12-hour format.
#
# Sample Input :: 07:05:45PM
# Sample Output :: 19:05:45
#
def convert_to_24(time)
  if time[-2..-1] == 'AM'
    time[0..1] == '12'? ('00'+time[2..-3]) : (time[0..-3])
  else
    time[0..1] == '12'? ('12'+time[2..-3]) : ((time[0..1].to_i + 12).to_s + time[2..-3])
  end
end

convert_to_24("07:05:45PM")
