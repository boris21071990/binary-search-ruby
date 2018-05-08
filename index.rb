values = [1, 2, 3, 4, 7, 8, 9, 12, 24, 35, 77]

def iterative_binary_search(values, value)
  begin_of_array = 0
  end_of_array = values.size - 1

  while begin_of_array <= end_of_array
    middle_of_array = ((begin_of_array + end_of_array) / 2).floor

    if values[middle_of_array] == value
      return middle_of_array
    elsif values[middle_of_array] > value
      end_of_array = middle_of_array - 1
    else
      begin_of_array = middle_of_array + 1
    end
  end

  "Not found"
end

puts iterative_binary_search(values, 7)

def recursive_binary_search(values, value, begin_of_array, end_of_array)
  return "Not found" if begin_of_array > end_of_array

  middle_of_array = ((begin_of_array + end_of_array) / 2).floor

  if values[middle_of_array] == value
    middle_of_array
  elsif values[middle_of_array] > value
    recursive_binary_search(values, value, begin_of_array, middle_of_array - 1)
  else
    recursive_binary_search(values, value, middle_of_array + 1, end_of_array)
  end
end

puts recursive_binary_search(values, 35, 0, values.size - 1)
