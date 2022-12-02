open("01_01.input") do f
  sum = 0
  result = 0
  while ! eof(f) 
    s = strip(readline(f))
    if length(s) == 0
      result = max(result, sum)
      sum = 0
    else
      sum += parse(Int64, s)
    end
  end
  print(result)
end