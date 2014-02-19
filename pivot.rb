class Pivot
  def pivot_index(list)
    final_index = 0
    alength = list.length
    return alength-1 if alength < 2

    (1..alength-1).each do |index|
      sum_left = sum(list[0..index-1])
      sum_right = sum(list[index+1..alength])
      return index if sum_left == sum_right
    end

    -1
  end

  def sum(list)
    sum = 0
    list.each do |item|
      sum = sum + item
    end
    sum
  end
end