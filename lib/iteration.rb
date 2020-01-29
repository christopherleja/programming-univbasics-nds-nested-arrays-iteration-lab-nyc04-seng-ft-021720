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
      outer_results.push.concat(inner_results)
      row_index += 1
    end
    outer_results
end

def total_even_pairs(src)
  total = 0
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0
        total += (src[row_index][0] + src[row_index][1])
      end
      element_index += 2
    end
    row_index += 1
  end
  total
end
