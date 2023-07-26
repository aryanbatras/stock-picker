
def stocks(arr)

    length = arr.length
    temp_num = 0

    buy = 0
    sell = 0
    answer = []

    temp_sell = 0
    temp_profit_storage = 0

    arr.each_with_index {
        |stock, index|
    
        temp_profit = 0
        num = index

        length.times do 
            temp_num = arr.at(num)
            if temp_num - stock > temp_profit
            temp_profit =  temp_num - stock
            temp_sell = num
            end
            num += 1
        end
        length -= 1

        if temp_profit > temp_profit_storage
        temp_profit_storage = temp_profit
        buy = index
        sell = temp_sell
        end
    }

    # returns index
    answer.push(buy)
    answer.push(sell)
    p answer

end

stocks([17, 3, 6, 9, 15, 8, 6, 1, 10])
# [1, 4] 