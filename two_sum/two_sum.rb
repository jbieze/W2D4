def bad_two_sum?(arr, target)
  i = 0
  j = 1
  while i < arr.length - 1
    while j < arr.length
      return true if arr[i] + arr[j] == target
      j += 1
    end
    i += 1
    j = i + 1
  end
  false
end

p bad_two_sum?([1, 2, 5, 4, 3], 7)






























arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false
