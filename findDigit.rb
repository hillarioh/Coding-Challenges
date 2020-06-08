# Complete the findDigits function below.
def findDigits(n)
    tine = n.to_i
    mine = n.to_s
    countt = mine.length
    i =0 
    num = 0
    if countt==1 
        return num = 1
    end
    
    while i<countt
        divisor  = mine[i].to_i
        if divisor> 0 
            (num +=1) if tine % divisor == 0 
        end
        i +=1
    end
    num


end