defmodule Challenge do

  def findFrecuencyR(stringA, stringB,upLimit, lowLimit, frecuency) do

    if upLimit<String.length(stringA) do
      subString = String.slice(stringA, lowLimit..upLimit)
      if  subString == stringB do
        findFrecuencyR(stringA, stringB,upLimit+1, lowLimit+1, frecuency+1)
      else
        findFrecuencyR(stringA, stringB,upLimit+1, lowLimit+1, frecuency)
      end

    else
      IO.puts "Frecuency: " <> to_string(frecuency)
    end
  end

  def findFrecuency(stringA, stringB) do
    upLimit = String.length(stringB)-1
    lowLimit = 0
    findFrecuencyR(stringA, stringB, upLimit, lowLimit, 0)
  end


end

stringA = "aaaaaa";
stringB = "aa";
Challenge.findFrecuency(stringA, stringB)
