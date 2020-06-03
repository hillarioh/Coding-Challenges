def encrypt(s) 
  my_string = s.gsub(/\s+/, '')
  str_len = my_string.length
  row = (str_len**(0.5)).to_i
  col = (str_len**(0.5)).ceil
  final_string = ""

  if row * col < str_len
    row=+1
  end

  output = Hash.new{[]}
   # j represents each letter 
  j = 1

  while j <= str_len
    new_col = (j%col)-1
    
    if new_col < 0
      output[col-1] += [my_string[j-1]]
    else
      output[new_col] += [my_string[j-1]]
    end
    j+=1
  end

  k= 0
  while k < output.count
    output[k].each do |x| 
      final_string += x 
    end
    final_string +=' ' if k != output.count-1
    k +=1
  end


  final_string
    
end

p encrypt("chillout")