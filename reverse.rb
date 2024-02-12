def reverse_quick_sort(string)
  return string if string.length <= 1

  pivot = string[0] #using quick sort
  left = []
  right = []

  string[1..-1].each_char do |char|
    char < pivot ? left << char : right << char
  end

  reverse_quick_sort(right.join) + pivot + reverse_quick_sort(left.join)
end

original_string = "oabcerfdfrange"
reversed_string = reverse_quick_sort(original_string)
puts reversed_string
