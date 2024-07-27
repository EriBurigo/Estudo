def find_three(arr)
    first = -Float::INFINITY
    second = -Float::INFINITY
    third = -Float::INFINITY

    arr.each do |num|
        if num > first
            third = second
            second = first
            first = num
        elsif num > second
            third = second
            second = num
        elsif num > third 
        end
    end

end

arr = [15, 18, 53, 54, 44, 101, 99]