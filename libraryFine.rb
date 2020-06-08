def libraryFine(d1, m1, y1, d2, m2, y2)
    if y2==y1 && m2==m1 && d1>d2
        return (d1-d2)*15
    elsif y2==y1 && m1>m2
        return (m1-m2)*500
    elsif y1>y2
        return  10000
    else
        return 0
    end
end