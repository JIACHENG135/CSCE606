def sum(arr)
    res = 0
    len = arr.length
    for i in 0..len-1
        res = res + arr[i]
    end
    return res+1
end