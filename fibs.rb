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

def fibs_rec(n, result=[0])
  if result.length == 0 
    result << 0
  elsif result.length == 1
    result << 1
  else
    result << (result[-1] + result[-2])
  end
  n -= 1
  fibs_rec(n, result) unless n == 0
  result
end

puts fibs(8).inspect
puts fibs_rec(8).inspect
