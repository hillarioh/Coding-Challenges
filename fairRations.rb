def fairRations(b)

  k = 0
  sum = 0
  tot = b.length
  if b.length < 3
    odds = 0
    (b.length).times do  |x|
      odds +=1 if x.odd?
    end
    return 'NO' if b.length ==2 && odds==1
    sum = odds
  else
    while k < b.length-1
              if b[k].odd? && b[k+1].odd?
                  b[k]+=1
                  b[k+1]+=1
                  sum+=2
                  k=0
              elsif k>0 && b[k].even? && b[k+1].odd? && b[k-1].odd?
                  b[k]+=1
                  b[k+1]+=1
                  sum+=2
                  k=0
              elsif tot-k>2 && b[k].odd? && b[k+1].even? && b[k+2].even?
                  b[k]+=1
                  b[k+1]+=1
                  sum+=2
                  k=0
              elsif k+1==b.length-1 && b[k].odd? 
                  b[k]+=1
                  b[k+1]+=1
                  sum+=2
                  k=0
              elsif k+1==b.length-1 && b[k].even? && b[k-1].even? && b[k+1].odd?
                  return 'NO'
              else
                 k+=1
              end
        
    end
  end
 
  return sum

end
arr=[4,5,6,7]
arr2=[6,5,5,6]
arr3=[2,5,2,2]
arr4=[2,5,2,2,3]

# p fairRations(arr)
p fairRations(arr4)