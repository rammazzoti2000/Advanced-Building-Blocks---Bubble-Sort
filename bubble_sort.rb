def bubble_sort(array)
  ##base case
  return array if array.length <= 1

  ##block code when size of array is bigger than 1
  n = array.length
  for i in 0...n - 1
    for j in 0...(n - i) - 1
      if array[j] - array[j + 1] > 0
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  return array
end

print bubble_sort([3, 5, 1, 4, 20])
puts

def bubble_sort_by(array)
  ##base case
  return array if array.length <= 1

  ##block code when size of array is bigger than 1
  n = array.length
  for i in 0...n - 1
    for j in 0...(n - i) - 1
      if yield(array[j], array[j + 1] ) > 0
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  return array
end

 bubble = bubble_sort_by(["hi","hello","hey", "i", "four"]) do |left, right|
  left.length - right.length
end

p bubble
