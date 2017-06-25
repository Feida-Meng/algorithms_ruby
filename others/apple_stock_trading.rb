# Suppose we could access yesterday's stock prices as a list, where:
# The indices are the time in minutes past trade opening time,
# which was 9:30am local time.
# The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.
# Write an efficient function that takes stock_prices_yesterday and returns the best
# profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.
def max_profit(price)
  max = 0
  min = 0
  max_profit = 0
  price.each_index do |i|
    if price[i] >= 0

      if price[i] < price[min]
        min = i
      end

      if price[i] - price[min] > max_profit
        max_profit = price[i] - price[min]
        max = i
      end

    end
  end

  min = price.index(price[max] -max_profit)
  return [price[min],price[max],max_profit]

end

# test
p1 = [120,110,99,111,123,144,155,139,114,121,89]
p2 = [150,120,120,133,93,144,144,20]
p3 = [100,45,120,105,110,43,100,50,113,30,100]
#
puts "min : #{max_profit(p1)[0]}, max : #{max_profit(p1)[1]}, max_profit : #{max_profit(p1)[2]}"
# # puts "--------------"
puts "min : #{max_profit(p2)[0]}, max : #{max_profit(p2)[1]}, max_profit : #{max_profit(p2)[2]}"
# puts "--------------"
puts "min : #{max_profit(p3)[0]}, max : #{max_profit(p3)[1]}, max_profit : #{max_profit(p3)[2]}"
puts "--------------"
