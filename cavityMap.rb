def cavityMap(grid)

  size = grid.count
  i=1
  while i<size-1
    
    grid[i].each_char.with_index do  |v,k|
      
        if k>0 && k< size-1
          next if grid[i-1][k]=='X'
          next if(v.to_i - grid[i-1][k].to_i) < 1 
          next if grid[i+1][k]=='X'
          next if(v.to_i - grid[i+1][k].to_i)<1 
          next if grid[i][k-1]=='X'
          next if(v.to_i-grid[i][k-1].to_i)<1 
          next if  grid[i][k+1]=='X'
          next if(v.to_i-grid[i][k+1].to_i )<1 
          grid[i][k]='X'          
        end
       
    end
    i+=1    
  end

  return grid

end

grid2 = ["989","191","111"]
grid1 = ["1112","1912","1892","1234"]

grid4=["179443854",
  "961621369",
  "164139922",
  "968633951",
  "812882578",
  "257829163",
  "812438597",
  "176656233",
  "485773814"]

 
p cavityMap(grid4)