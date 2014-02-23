class Pivot
  def pivot_index(list)
    alength = list.length
    index = -1

    return index if (alength < 3) 

    sum_left = list[0]
    sum_right = sum(list[2..alength-1])

    (2..alength-1).each do |ind|
      return ind-1 if sum_left == sum_right
      sum_left = sum_left + list[ind-1]
      sum_right = sum_right - list[ind]
    end

    index
  end

  def sum(list)
    sum = 0
    list.each do |item|
      sum = sum + item
    end
    sum
  end
end