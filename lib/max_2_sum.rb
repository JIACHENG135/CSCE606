def max_2_sum(arr)
    len = arr.length
    res = 0
    if len==0
        res = 0
    elsif len==1
        res = arr[0]
    else
        max1 = [arr[0],arr[1]].max
        max2 = [arr[0],arr[1]].min
        for i in 2..len-1
            if arr[i]>max1
                max2 = max1
                max1 = arr[i]
            elsif arr[i]>max2
                max2 = arr[i]
            end
        end
        res = max1+max2
    end
    return res
end        