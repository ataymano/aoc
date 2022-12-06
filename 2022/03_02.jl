d = Dict()
for c in 'a':'z'
    d[c] = Int(c) - Int('a') + 1
end
for c in 'A':'Z'
    d[c] = Int(c) - Int('A') + 27
end

open("03_02.input") do f
    result = 0
    episode = []
    while !eof(f) 
        l = strip(readline(f))
        push!(episode, Set(l))
        if length(episode) == 3
            for c in intersect(episode[1], episode[2], episode[3])
                result += d[c]
            end
            episode = []
        end
    end
    print(result)
end