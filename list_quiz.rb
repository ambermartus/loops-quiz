def three_even(list)
    count = 0
    list.size.times do |i|
        value = list[i]
        if value % 2 == 0
            count = count + 1
        else
            count = 0
        end
        if count == 3
            return true
        end
    end
return false
end
puts three_even ([2, 1, 3, 5]) # false
puts three_even ([2, 4, 12, 5]) # true
puts three_even ([2, 1, 4, 6]) # false
puts three_even ([1, 4, 6, 4]) # true

def bigger_two(list_1, list_2)
    num1 = list_1[0] # the first time I did this I used 1 and 2 in the square brackets, I had to change those to 0 and 1
    num2 = list_1[1] # so I did num2 = list_1[2] this doesn't work because the computer stores the first integer in a list in a spot called 0 not one
    num3 = list_2[0] # When I made this mistake I got an error because list_1[2] was not an integer
    num4 = list_2[1]
    sum1 = num1 + num2
    sum2 = num3 + num4
    if sum1 < sum2
        return list_2
    else
        return list_1
    end
end

puts print bigger_two([1, 2], [3, 4]) # 2nd list
puts print bigger_two([1, 7], [4, 4]) # lst list

# def series_up (n)     
#     list = []               # i decicded to redo my code entirely
#     list_saved = []
#     n.times do |i|
#         list = [(list_saved), (list), i + 1]
#         list_saved = list
#     end
#     return list
# end

def series_up (n)
    length = n*(n + 1)/2 # this is the mathematical equation for the length of a series
    time = 1 # this variable counts how many times the loop runs but it needs to be reset after it is run three times so that it starts over at 1 again
    reset = 3 # this counts the number of resets
    list = [1]
    (length - 1).times do
        list = [list, time]
        time += 1
        if time == reset # refer to line 50 comment
            time =1
            reset+= 1 # after the first reset the reset needs increase each time so because the last number of the list is getting bigger and without the reset it will not print
        end
    end
    print list
end


puts series_up(1), "\n"     # i added the \n so the lists would be separated by a line
puts series_up(2), "\n"     # i added the print so that the lists would print in list format
puts series_up(3), "\n"
puts series_up(4), "\n"