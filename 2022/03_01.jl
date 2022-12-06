d = Dict()
for c in 'a':'z'
    d[c] = Int(c) - Int('a') + 1
end
for c in 'A':'Z'
    d[c] = Int(c) - Int('A') + 27
end

open("03_01.input") do f
    result = 0
    while ! eof(f) 
        l = strip(readline(f))
        half = Int(length(l) / 2)
        first = Set(l[1:half])
        second = Set(l[half + 1:length(l)])
        both = intersect(first, second)
        for c in both
            result += d[c]
        end
    end
    print(result)
end