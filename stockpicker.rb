def stockPicker(array)
  candidates = []
  array.each do |buyPrice|
    buyDay = array.index(buyPrice)
    array[buyDay+1, array[-1]].each do |sellPrice|
      sellDay = array.index(sellPrice)
      profit = sellPrice - buyPrice
      candidates << [buyDay, sellDay, buyPrice, sellPrice, profit]
    end
  end

return candidates
  
bestProfit = 0
bestCandidate = []
candidates.each do |candidate|
  if candidate[4] > bestProfit
    bestCandidate = candidate
  end
end

return "No profits to be had" if bestCandidate == []
return "I'd recommend buying on day #{bestCandidate[0]+1} and selling on day #{bestCandidate[1]+1}," + " for a profit of $#{bestCandidate[3]} - $#{bestCandidate[2]} = $#{bestCandidate[4]}."

end