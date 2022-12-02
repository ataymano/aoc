open("01_02.input") do f
    elf = 0
    result = []
    while ! eof(f) 
      s = strip(readline(f))
      if length(s) == 0
        push!(result, elf)
        result = sort(result, rev=true)[1:min(3, length(result))]
        elf = 0
      else
        elf += parse(Int64, s)
      end
    end
    print("$result\n")
    print(sum(result))
  end