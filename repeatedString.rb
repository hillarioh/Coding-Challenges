def repeatedString(s, n)
    len_str = s.length
    num_str = n/len_str
    remainder = n % len_str
    count1 = s.count('a') * num_str
    count2 = s[0...remainder].count('a')
    total = count1 + count2

end