def merge_sort(arr)
  if arr.length > 1
    arr_2 = arr.slice!(0..(arr.length/2)-1)
    arr_3 = arr.slice!(0..arr.last)

    arr_2 = merge_sort(arr_2)
    arr_3 = merge_sort(arr_3)
  else
    return arr
  end
  merge(arr_2, arr_3)
end

def merge(arr_2, arr_3, arr=[])
  until arr_2.length == 0 || arr_3.length == 0
    if arr_2.first < arr_3.first
      arr.push(arr_2.shift)
    else
      arr.push(arr_3.shift)
    end
  end
  arr += arr_2 + arr_3
end

puts merge_sort([3,7,1,4,8,5,9,2])
