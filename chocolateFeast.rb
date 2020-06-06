def chocolateFeast(n, c, m)
    
  r=n/c
  i = r
  while i>=m
      r+=(i/m)
      i=(i/m)+(i%m)
  end
return r

end