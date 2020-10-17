# Input: s = "anagram", t = "nagaram"
# Output: true

# def is_anagram(s, t)
#   return false if s.length != t.length

#   s.each_char.with_index do |v, k|
#     t.each_char.with_index do |va, ke|
#       if v == va
#         t = t.split("")
#         t.delete_at(ke)
#         t = t.join("")
#         break
#       end
#     end
#   end

#   if t.empty?
#     return true
#   else
#     return false
#   end
# end

def is_anagram(s, t)
  return false if s.length != t.length
  s = s.split("")
  t = t.split("")

  s.each_with_index do |v, k|
    t.each_with_index do |va, ke|
      if v == va
        t.delete_at(ke)
        break
      end
    end
  end

  if t.empty?
    return true
  else
    return false
  end
end

p is_anagram("anagram", "nagaram")
