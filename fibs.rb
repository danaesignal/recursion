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

def fibs_rec2(n, result=[0])
  result[1] = 1 if n > 0
  result.push(result[-1] + result[-2]) if n > 1
  n -= 1
  fibs_rec2(n, result) unless n < 0
  result
end

puts fibs(8).inspect
puts fibs_rec2(3).inspect
