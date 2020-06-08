def getMoneySpent(keyboards, drives, b)
    #
    # Write your code here.
    #
    
     m=-1
      keyboards.each do |k|
          drives.each do |d|
           m=k+d if k+d>m && k+d<=b 
          end
      end
      return m
    # end


end