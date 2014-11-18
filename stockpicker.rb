def stockPicker(array)
  return "Please input a chronological array of stock prices" unless array.is_a?Array
  candidates = []
  (0..(array.length - 1)).each do |buyDay|
    buyPrice = array[buyDay]
    ((buyDay + 1)..(array.length - 1)).each do |sellDay|
      sellPrice = array[sellDay]
      profit = sellPrice - buyPrice
      candidates << [buyDay, sellDay, buyPrice, sellPrice, profit]
    end
  end

bestProfit = 0
bestCandidate = []
candidates.each do |candidate|
  if candidate[4] > bestProfit
    bestProfit = candidate[4]
    bestCandidate = candidate
  end
end

return "No profits to be had." if bestCandidate == []
return "I'd recommend buying on day #{bestCandidate[0]+1} and selling on day #{bestCandidate[1]+1}," + " for a profit of $#{bestCandidate[3]} - $#{bestCandidate[2]} = $#{bestCandidate[4]}."

end