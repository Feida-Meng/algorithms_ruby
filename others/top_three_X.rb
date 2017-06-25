# Given a list of integers,
# find the highest product you can get from three of the integers.
# The input list_of_ints will always have at least three integers.

def top_three_X(array)
    if array.size == 3
      m1 = array[0]
      m2 = array[1]
      m3 = array[2]
    elsif array.size > 3
      m1 = array[0]
      m2 = array[0]
      m3 = array[0]
      array.each do |e|

        if e > m1
          m3 = m2
          m2 = m1
          m1 = e
        elsif e > m2
          m3 = m2
          m2 = e
        elsif e > m3
          m3 = e
        end

      end
      return [m1,m2,m3]
    end

end

# test
a1 = [1,2,3]
a2 = [2,5,1,3,9,10]
a3 = [20,100,3,56,0,96,1]
a4 = [-100,-40,40,-1,0]

puts top_three_X(a1)
puts "--------------------"
puts top_three_X(a2)
puts "--------------------"
puts top_three_X(a3)
puts "--------------------"
puts top_three_X(a4)
puts "--------------------"
