# def three_even(list)
#     count = 0
#     list.size.times do |i|
#         value = list[i]
#         if value % 2 == 0
#             count = count + 1
#         else
#             count = 0
#         end
#         if count == 3
#             return true
#         end
#     end
# return false
# end
# puts three_even ([2, 1, 3, 5]) # false
# puts three_even ([2, 4, 12, 5]) # true
# puts three_even ([2, 1, 4, 6]) # false
# puts three_even ([1, 4, 6, 4]) # true

# def bigger_two(list_1, list_2)
#     sum1 = list_1[1] + list_1[2]
#     sum2 = list_2[1] + list_2[2]
#     if sum1 < sum2
#         return list_2
#     else
#         return list_1
#     end
# end

# puts bigger_two([1, 2], [3, 4]) # 2nd list
# puts bigger_two([1, 7], [4, 4]) # lst list

def series_up (n)
    list = []
    n.times do |i|
        list = [(list), i + 1]
    end
    return list
end

puts series_up(1)
puts series_up(2)
puts series_up(3)
puts series_up(4)