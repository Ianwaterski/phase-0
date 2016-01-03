# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

#def array_concat(array_1, array_2)
#    array1 = array_1[0]
#    array2 = array_2[0]

#    array_1.each do |x|
#        if x.index >= array_1.index
#            array1 = x + array1
#        end
#    end

#    array_2.each do |y|
#        if y.index >= array_2.index
#            array2 = y
#        end
#    end
#    return array1.to_s + array2.to_s
#end

#array_concat([dog, cat], [house, car])

def array_concat(array_1, array_2)
  array_1.each {|x| print x, " "} + array_2.each {|x| print x, " "}
end