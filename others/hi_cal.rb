# Your company built an in-house calendar tool called HiCal.
# You want to add a feature to see the times in a day when everyone is available.
# To do this, you’ll need to know when any team is having a meeting.
# In HiCal, a meeting is stored as arrays ↴ of integers [start_time, end_time].
# These integers represent the number of 30-minute blocks past 9:00am.
# Write a function merge_ranges() that takes an array of meeting time ranges
# and returns an array of condensed ranges.
# Do not assume the meetings are in order. The meeting times are coming from multiple teams.
# Write a solution that's efficient even
# when we can't put a nice upper bound on the numbers representing our time ranges.
# Here we've simplified our times down to the number of 30-minute slots past 9:00 am.
# But we want the function to work even for very large numbers, like Unix timestamps.
# In any case, the spirit of the challenge is to merge meetings where start_time and
# end_time don't have an upper bound.

def hi_cal(array)

  array = array.sort{ |a,b| a[0] <=> b[0] }

  condensed_a = [array[0]]
  array[1..-1].each do |m|
    if condensed_a[-1][1] >= m[0]
      if condensed_a[-1][1] < m[1]
        condensed_a[-1][1] = m[1]
      end
    else
      condensed_a << m
    end
  end

  condensed_a

end


  a1 = [[0,9],[3, 7],[4, 6],[2,6],[11,13]]
  a2 = [[3,4],[0, 1],[4, 6],[2,10],[11,13]]
  puts "#{hi_cal(a1)}"
  puts "#{hi_cal(a2)}"
