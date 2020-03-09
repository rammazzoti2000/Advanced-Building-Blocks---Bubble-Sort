def bubble_sort(array)
  swap = false

  while !swap
    swap = true
    (0...array.length-1).each.with_index do |item,idx|
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swap = false
      end
    end
end
  return array
end

def bubble_sort_by(array)
  swap = false

  while !swap
    swap = true
    (0...array.length-1).each.with_index do |item,idx|
      if yield(array[idx], array[idx + 1])
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swap = false
      end
    end
end
  return array
end

bubble = bubble_sort_by(["hhjdasghg","cdankd","badnnd", "i", "a", "e", "four","five", "hey" , "hello", "hi"]) do |left, right|
    left > right
end

p bubble_sort([1,3,42,54,21,221,31,2,0])
puts
p bubble
