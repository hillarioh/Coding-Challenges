def palindromeIndex(s)
    i = 0
       j = s.length-1
   
       while i<j
           if s[i]==s[j]
               i+=1
               j-=1
           else
               return i if isPal(s[0...i]+s[i+1...s.length])
               return j if isPal(s[0...j]+s[j+1...s.length])
                i+=1
               j-=1
           end
                       
       end
       return -1;
   
   end