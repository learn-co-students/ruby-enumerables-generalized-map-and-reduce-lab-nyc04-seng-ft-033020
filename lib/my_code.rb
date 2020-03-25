def map (array)
    n_array = []
    x = 0
    while x < array.length do
        n_array << yield(array[x])
        x += 1
    end
    n_array
end

def reduce (array, starting_point = nil)
    if starting_point
        sum = starting_point
        x = 0
    else
        sum = array[0]
        x = 1
    end

    while x < array.length do
        sum = yield(sum, array[x])
        x += 1
    end
    sum
end
