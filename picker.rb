def stock_picker(array)
    picked = []
    best_profit = 0

    array.each_with_index do |buy_price, buy_date|
    array.each_with_index do |sell_price, sell_date|
        if sell_date > buy_date
            daily_profit = (sell_price - buy_price)
            if daily_profit > best_profit
                best_profit = daily_profit
                picked[0] = buy_date + 1 #I'm dumb and don't know how to make the date index start at 1 instead of 0
                picked[1] = sell_date + 1
            end
        end
    end
end
    picked
    puts "Buy stocks on day #{picked[0]} and sell on day #{picked[1]} for a $#{best_profit} profit!!"
end

stock_picker([27,4,3,16,7,19,7,13,1])