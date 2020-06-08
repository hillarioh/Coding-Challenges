def equalizeArray(arr)
    high = 1
    arr.each do |x|
        curr = arr.count(x)
        high = curr if curr > high
            
    end
    
    return arr.count - high


end