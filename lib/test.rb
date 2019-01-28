# a = [1,2,3,4.5,5,6]
# # puts a.sort
# puts a[4]
# def sum_to_n? arr,n
#     # flag = true
#     if arr.empty?
#         return false
#     else
#         arr = arr.sort
#         l = 0
#         r = arr.length-1
#         while l<r 
#             if arr[l]+arr[r]<n
#                 l += 1
#             elsif arr[l]+arr[r]>n
#                 r -= 1
#             else
#                 return true
#             end
#         end  
#         return false
#     end
# end
# def hello(name)
#     return "Hello,"<<name
# end

def starts_with_consonant? s
  # YOUR CODE HERE
    wait = s[0]
    if /^[^aeiou\W]/i.match(s) == nil 
        return false 
    else 
        return true 
    end 
end
s = ''
c = starts_with_consonant?(s)
puts c
puts 'name' + 'niho'

# for i in 0..s.length
#     puts s[s.length]
#     puts s[s[i..s.length]]
#     c = starts_with_consonant?(s[i..s.length])
#     puts c
# end
# puts "L" =~ /[aeiou]/i



# puts "a" == 'a'
# puts hello("Mowhoo")
# puts sum_to_n? [3,0,5],5