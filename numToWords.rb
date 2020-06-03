def timeInWords(h, m)

  opt= { 1=>'one',2=>'two',3=>'three',4=>'four',5=>'five',6=>'six',7=>'seven',8=>'eight',9=>'nine',10=>'ten',
    11=>'eleven',12=>'twelve',13=>'thirteen',14=>'fourteen',15=>'quarter', 16=>'sixteen',17=>'seventeen',
    18=>'eighteen',19=>'nineteen',20=>'twenty'}  

  if m <= 20
    return "#{opt[h]} o' clock" if m == 0
    return "#{opt[m]} past #{opt[h]}" if m == 15
    return "#{opt[m]} minute past #{opt[h]}" if m==1
    return "#{opt[m]} minutes past #{opt[h]}"
  elsif m>20 && m <= 30
    return "half past #{opt[h]}" if m==30
    return "twenty #{opt[m-20]} minutes past #{opt[h]}"
  else
    d = 60 - m
    (h!=12) ? f=h+1 : f=1
    return "twenty #{opt[d-20]} minutes to #{opt[f]}" if d>20
    return "quarter to #{opt[f]}" if d==15
    return "#{opt[d]} minute to #{opt[f]}" if d==1
    return "#{opt[d]} minutes to #{opt[f]}"
  end

end

num = 60
j=1
while j<num

  p timeInWords(5,j)
  j+=1  
end

# p timeInWords(5,0)
# p timeInWords(5,15)
# p timeInWords(5,20)
# p timeInWords(5,30)
# p timeInWords(12,45)