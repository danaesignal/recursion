def fibs(n, result=[0,1])

  if n == 0
    result[0]
  elsif n == 1
    result
  else
    for i in 2..n
      result << result[(i-1)] + result[(i-2)]
    end
  end
  result
end

puts fibs(8).inspect
