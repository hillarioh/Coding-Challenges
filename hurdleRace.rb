def hurdleRace(k, height)
    
    initial_max = k.to_i
    dose = 0

    height.each do |x| 
        if x > initial_max
            dose = x - initial_max if (x - initial_max) > dose
        end
    end
    
    return dose


end