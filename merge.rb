def merge(a, b, array)
  i = 0
  j = 0
  array.each_with_index do |_n, index|
    if i >= a.length
      array[index] = b[j]
      j += 1
    elsif j >= b.length
      array[index] = a[i]
      i += 1
    elsif a[i] < b[j]
      array[index] = a[i]
      i += 1
    elsif a[i] > b[j]
      array[index] = b[j]
      j += 1
    end
  end
  array
end

def merge_sort(array)
  n = array.length
  return if n < 2

  a = array.slice(0, n / 2)
  b = array.slice(n / 2, n)
  merge_sort(a)
  merge_sort(b)
  merge(a, b, array)
end
p merge_sort([999, 888, 600, 6, 2, 13, 4, 8, 3])
