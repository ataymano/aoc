function parse_range(range)
    first, second = split(range, '-')
    return parse(Int64, first), parse(Int64, second)
end

open("04_01.input") do f
    result = 0
    while ! eof(f) 
        first, second = split(strip(readline(f)), ',')
        first = parse_range(first)
        second = parse_range(second)
        if first[1] > second[1]
            first, second = second, first
        end
        result += Int((first[1] == second[1]) || (first[2] >= second[2]))
    end
    print(result)
end
