def merge_sort(array)
  #base case is array with 1 item
  if array.length <= 1 
    return array
  #otherwise break array in half as best as possible until down to 1 item
  else 
    midpoint = (array.length+1)/2 #add 1 to length to account for division odd numbers by 2
    left_array = merge_sort(array[0...midpoint])  
    right_array = merge_sort(array[midpoint..])
    merging_machine(left_array, right_array, merged_array=[])
  end
end

def merging_machine(a, b, c)
  x = 0
  y = 0
  length = (a+b).length
  while c.length < length 
    if a[x].nil? 
      c << b[y]
    elsif b[y].nil?
      b.shift
      c << a[x]
      a.shift
    elsif a[x] < b[y] && a[x].nil? == false && b[y].nil? == false
      c << a[x]
      a.shift
    elsif a[x] >= b[y] && a[x].nil? == false && b[y].nil? == false
      c << b[y]
      b.shift
    end
  end
  c #return the merged sorted Array
end

puts "#{merge_sort([5,6,4,2,8,3])}"

puts "#{merge_sort([5,2,6,4])}"
x = [0, 1, 1, 2, 3, 5, 8, 13].reverse
puts "#{merge_sort(x)}"
