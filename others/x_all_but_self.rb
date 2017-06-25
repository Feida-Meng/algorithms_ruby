# You have an array of integers,
# and for each index you want to find the product of every integer
# except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index()
# that takes an array of integers and returns an array of the products.
def x_all_but_self(a)
  zero_qty = a.count(0)
  return products = Array.new(a.size,0) if zero_qty > 1
  total_x = 1
  products = []
  a.each { |e| total_x *= e if e != 0}
  if zero_qty == 1
    a.each { |e| products << (e != 0 ? 0 : total_x)  }
  else
    a.each { |e| products << total_x / e}
  end
  return products
end

# test

a1 = [1,2,4,5,6]
a2 = [0,2,4,5,6]
a3 = [0,2,4,5,6,0]
a4 = [0,22,4,5,6,10,0,110,0]
a5 = [0,0,0,0,0,0,0]

puts x_all_but_self(a1)
puts "-----------------"
puts x_all_but_self(a2)
puts "-----------------"
puts x_all_but_self(a3)
puts "-----------------"
puts x_all_but_self(a4)
puts "-----------------"
puts x_all_but_self(a5)
puts "-----------------"
