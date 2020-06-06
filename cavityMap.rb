def cavityMap(grid)

  size = grid.count
  i=1
  while i<size-1
    
    grid[i].each_char.with_index do  |v,k|
      
        if k>0 && k< size-1
          
          next if(v.to_i - grid[i-1][k].to_i) < 0
          next if(v.to_i - grid[i+1][k].to_i)<0
          next if(v.to_i-grid[i][k-1].to_i)<0
          next if(v.to_i-grid[i][k+1].to_i )<0 
          grid[i][k]='X'          
        end
       
    end
    i+=1    
  end

  return grid

end

grid2 = ["989","191","111"]
grid1 = ["1112","1912","1892","1234"]


 
p cavityMap(grid1)