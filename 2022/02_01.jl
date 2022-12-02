open("02_01.input") do f
    d = Dict("A" => 0, "B" => 1, "C" => 2, "X" => 0, "Y" => 1, "Z" => 2)
    result = 0
    while ! eof(f) 
        opponent, me = split(strip(readline(f)))
        opponent = d[opponent]
        me = d[me]
        game = 0
        if (opponent + 1) % 3 == me
            game = 6
        elseif (opponent == me)
            game = 3
        end
        result += me + 1 + game
    end
    print(result)
end
