
def my_min_phase_i(arr)
  i = 0
  while i < arr.length
    arr2 = arr[0...i] + arr[i + 1..-1]
    return arr[i] if arr2.all? {|el| el > arr[i] }
    i += 1
  end
end

def my_min_phase_ii(arr)
  # arr.each do |el1|
  #   return el1 if arr[1..-1].all? { |el2| el2 > el1 }
  #   arr.shift
  # end
  min = arr.first

    i = 0
    while i < arr.length
      min = arr[i] if arr[i] < min
      i += 1
    end

  min
end

# p my_min_phase_i([0, 3, 5, 4, -5, 10, 1, 90])
# p my_min_phase_ii([0, 3, 5, 4, -5, 10, 1, 90])

def largest_contiguous_subsum_phase_i(list)
  diffs = {}

  i = 0
  j = 0
  while i < list.length

    while j < list.length

      diffs[list[i..j]] = list[i..j].reduce(:+)
      j += 1
    end
    i+= 1
    j = i
  end
  diffs.values.max
end

def largest_contiguous_subsum_phase_ii(list)
  return list.max if list.all? {|n| n < 0}
  largest = list[0]
  maybe = list[0]
    list.drop(1).each_with_index do |num, idx|
      maybe += num
      largest = maybe if maybe > largest
      maybe = 0 if maybe < 0
    end
  largest
end

list1 = [5, 3, -7]
# p largest_contiguous_subsum_phase_i(list1) # => 8
p largest_contiguous_subsum_phase_ii(list1) # => 8
list2 = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum_phase_i(list2) # => 8 (from [7, -6, 7])
p largest_contiguous_subsum_phase_ii(list2) # => 8 (from [7, -6, 7])
list3 = [-5, -1, -3]
# p largest_contiguous_subsum_phase_i(list3) # => -1 (from [-1])
p largest_contiguous_subsum_phase_ii(list3) # => -1 (from [-1])
