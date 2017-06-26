# Your quirky boss collects rare, old coins...
# They found out you're a programmer and
# sked you to solve something they've been wondering for a long time.
# Write a function that, given:
# 1.an amount of money
# 2.an array of coin denominations
# computes the number of ways to make the amount of money with
# coins of the available denominations.
#
# Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢),
# your program would output 4—the number of ways to make 44¢ with those denominations:
#
# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢

def coin_denominations(coin,denoms)
  denom_qty = 0
  denoms.each do |d|
    if coin >= d
      if coin % d == 0
        denom_qty += 1
        puts "coin:#{coin}, #{denom_qty}"
        puts "------------"
      else
        # denom_qty += coin_denominations(d,denoms)
        denom_qty += coin_denominations(coin % d,denoms)
      end
    else
      break
    end
  end
  denom_qty

end

puts coin_denominations(4,[1,2,3])
