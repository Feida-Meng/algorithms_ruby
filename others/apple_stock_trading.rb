# Suppose we could access yesterday's stock prices as a list, where:
# The indices are the time in minutes past trade opening time,
# which was 9:30am local time.
# The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.
# Write an efficient function that takes stock_prices_yesterday and returns the best
# profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.
def max_profit(price)
  max = price[0]
  min = price[0]
  price.each do |p|
    if p > 0
      max = p if p > max
      min = p if p < min
    end
  end

  return [min,max,max - min]

end

# test
p1 = [120,110,99,111,123,144,155,139,114,121]
p2 = [0,120,120,133,93,144,144]

puts max_profit(p1)
puts "--------------"
puts max_profit(p2)
puts "--------------"
