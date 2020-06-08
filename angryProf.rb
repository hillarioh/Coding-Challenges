def angryProfessor(k, a)
    
    min = k.to_i
    early_b = 0
    
    a.each do |x| 
        if x.to_i <=0
            early_b +=1
        end
        
    end
    
    min <= early_b ? "NO":"YES"


end