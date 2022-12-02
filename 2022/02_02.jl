open("02_02.input") do f
    d = Dict("A" => 0, "B" => 1, "C" => 2, "X" => 2, "Y" => 0, "Z" => 1)
    result = 0
    while ! eof(f) 
        opponent, outcome = split(strip(readline(f)))
        opponent = d[opponent]
        outcome = d[outcome]
        me = (opponent + outcome) % 3
        game = ((outcome + 1) % 3) * 3
        result += me + 1 + game
    end
    print(result)
end
