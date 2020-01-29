def join_ingredients(src)
  results = []
    row_index = 0 
    while row_index < src.count do
      element_index = 0
      while element_index < src[row_index].count do
        food_1 = src[row_index][0]
        food_2 = src[row_index][1]
        results.push("I love #{food_1} and #{food_2} on my pizza")
      element_index += 2
      end
    row_index += 1
    end
    results
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  outer_results = []
  row_index = 0
    while row_index < src.count do
      element_index = 0 
      inner_results = []
      while element_index < src[row_index].count do
        if src[row_index][0] < src[row_index][1]
          inner_results.push(src[row_index][1])
        else
          inner_results.push(src[row_index][0])
        end
        element_index += 2 
      end
      outer_results.push(inner_results.flatten)
      row_index += 1
    end
    outer_results
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
 
 # total = 0 
  #row_index = 0 
  #while row_index < src.count do
   # element_index = 0 
    #while element_index < src[row_index].count do
     # result = src[row_index][element_index] % 2
      #if result != 1 
       # total += src[row_index][element_index]
      #end
      #element_index += 1 
    #end
    #row_index += 1
  #end
#  p total
end
