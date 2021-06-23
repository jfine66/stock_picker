def stock_picker(array)
    profit = 0
    bought = 0
    sold = 0
    array.length.times do |i|
      array.each do |item|
        if array.index(item) < i
          next
        elsif (item - array[i]) > profit
          profit = item - array[i]
          bought = array[i]
          sold = item
        end
      end
    end
    print [array.index(bought), array.index(sold)]
  end
  
  
#   stock_picker([17,3,6,9,15,8,6,1,10])
#   puts ""
#   stock_picker([19,5,8,11,1,10,8,3,12])