# my attempt
# def merge_sort(arr, arr_left = [], arr_right = [])
#   len = arr.length
#   if len < 2
#     # return something
#   else
#     arr_left = merge_sort(arr.slice(0, len / 2))
#     arr_right = merge_sort(arr.slice(len / 2, arr.length))
#     merge_sort(arr, arr_left, arr_right)
#     # arr_left.each do |i|
#     #   arr_right.each do |j|
#     #     if j < i
#     #       arr[i] = j
#     #     else
#     #       arr[i] = i
#     #     end
#     #   end
#     # end
#   end
#   p arr
# end


# attempt after resarching
def merge_sort(arr)
  if arr.length <= 1
    return arr
  end

  middle = (arr.length / 2).round
  left = arr.slice(0, middle)
  right = arr.slice(middle, arr.length)

  return merge(merge_sort(left), merge_sort(right))
end

def merge (left, right)
  arr = []
  i = 0
  j = 0

  while left.length > 0 && right.length > 0
    if left[0] < right[0]
      arr.push(left.shift)
    else
      arr.push(right.shift)
    end
  end

  while i < left.length
    arr.push(left[i])
    i += 1
  end

  while j < right.length
    arr.push(right[j])
    j += 1
  end

  return arr
end

p merge_sort([2, 5, 1, 3, 7, 4, 2, 3, 9, 8, 6, 3])
p merge_sort([1, 2, 4, 3])
p merge_sort([21, 25, 100, 98, 89, 77])