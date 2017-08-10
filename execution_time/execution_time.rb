def my_min(arr)
  arr.each do |el1|

    return el1 if arr[1..-1].all? { |el2| el2 > el1 }
    arr.shift
  end
end

p my_min([0, 3, 5, 4, -5, 10, 1, 90])
