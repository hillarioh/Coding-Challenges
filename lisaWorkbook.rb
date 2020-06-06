def workbook(k, arr)

  pg=0
  sp=0

  # chapter iteration
  arr.each do |v| 
    pg+=1
      i=1
      p=1
      # finding no. of pages any no with a remainder we add one
      (v%k!=0) ? j=(v/k)+1  :  j = v/k
      # page iteration
      while p<= j
        # puts "l=#{j} page#{pg}  ex. #{i} "
        sp+=1 if pg==i
          if i%k==0
              p+=1
              # incase of 6(any no divisible by k and is last digit) will add two pages once
              pg+=1 if i!=v
          end
          # since it is last page it may have less i thus break when 
          # total exercise is reached to avoid full cycle
          break if i==v
          i+=1
      end
  end
  return sp

end

arr=[4,2,6,1,10]

p workbook(3,arr)