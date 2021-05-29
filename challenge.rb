# frozen_string_literal: true

# First Exercise

def intersection_union(array, arr)
  intersection = []
  union = array + arr

  array.each do |num|
    arr.include?(num) ? intersection << num : intersection
  end

  [intersection.uniq, union.uniq.sort]
end

p intersection_union([4, 4, 6, 7, 8], [4, 5, 9])
p intersection_union([7, 8, 9], [1, 2, 3])
p intersection_union([4, 4, 6, 7, 8], [4, 5, 6, 9])
p intersection_union([7, 8, 9], [1, 2, 3])

# Second Exercise

def find_bob(array)
  new_array = array.find_index('Bob')
  new_array.nil? ? -1 : new_array
end

name_array = %w[Bob Carlos Ruben]
puts find_bob(name_array)
second_name_array = %w[bob carlos oscar]
puts find_bob(second_name_array)

# Third Exercise

def unique(array)
  a = []
  unique_element = array.select { |n| array.count(n) == 1 }.join(' ').to_f
  unique_element_index = array.find_index(unique_element)
  unique_element_index.nil? ? a : a.push(unique_element, unique_element_index)
end

p unique([3, 3, 1, 3, 3, 3])
p unique([0, 0, 0, 0.93, 0])
p unique([1, 1, 1, 1, 1, 0, 1, 1])
p unique([1, 1, 1, 1, 1, 1, 1, 1])
