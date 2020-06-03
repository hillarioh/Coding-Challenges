def beautifulTriplets(d, arr)

tot = 0

  arr.each_with_index do |v,i|
    # puts "#{v} index #{i}"
    j = i+1
    diff = 0
    while j < arr.count
      puts "#{arr[j]} index #{arr[i]}"
      diff = d  if arr[j]-arr[i]==d
      if diff==d && (arr[j]-arr[i]==(d*2))
        tot +=1
        break        
      end

      j+=1

    end
    
  end

   tot

end
diff =3
arr=[1,2,4,5,7,8,10]

beautifulTriplets(diff,arr)