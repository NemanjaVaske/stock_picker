#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
def stock_picker(prices)

    best_profit = 0;
    best_days = [];
    
    for i in 0..prices.length-2
        for j in i+1..prices.length-1
            profite = prices[j] - prices[i]
            if profite > best_profit
                best_profit = profite
                best_days = [i,j]
            end
        end
    end
    best_days
    puts "best profite is #{best_profit} and days are #{best_days}"
end

stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1,4] for a profit of $15 - $3 == $12
stock_picker([4,7,2,9,3,5,10,2]) #=> [2,6] for a profit of $10 - $2 == $8