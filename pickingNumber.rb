def pickingNumbers(a)
    # Write your code here
        if a.length<=100 && a.length >=1
        ar=a.sort
        r=0
        ar.each_with_index do |v,id|
            c=1
            i=id.to_i
          while  i+1<a.length && (v-ar[i+1]).abs<=1
              c+=1 
              c>r ? r=c : r=r
              i+=1
          end   
        end
        return r
    end

end