def bubble_sort(array)
  array.sort_by do |index|
    index
  end
end
print bubble_sort([9,3,6,-7,3,1,-5,2])
puts " "
print bubble_sort([4,3,78,2,0,2])


def bubble_sort_by (array)
  (array.length - 1).downto(1) do |limit|
    for n in (0...limit)
      if yield(array[n], array[n+1]) > 0
        array[n], array[n+1] = array[n+1], array[n]
      end
    end
  end
  array
end

puts " "
print (bubble_sort(["wale","tunde","ade","wole","tayo","funmi"]) { |first, second| first.length -second.length } )
puts " "

print (bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length } )
