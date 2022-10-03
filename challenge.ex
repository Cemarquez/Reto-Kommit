defmodule Challenge do

  def findFrequencyR(stringA, stringB,upLimit, lowLimit, frequency, length) when upLimit < length do
    subString = String.slice(stringA, lowLimit..upLimit)
    if  subString == stringB do
      findFrequencyR(stringA, stringB,upLimit+1, lowLimit+1, frequency+1, length)
    else
      findFrequencyR(stringA, stringB,upLimit+1, lowLimit+1, frequency, length)
    end
  end

  def findFrequencyR(_stringA, _stringB,upLimit, _lowLimit, frequency, length) when upLimit >= length do
    IO.puts "Frequency: " <> to_string(frequency)
  end

  def findFrequency(stringA, stringB) do
    upLimit = String.length(stringB)-1
    lowLimit = 0
    findFrequencyR(stringA, stringB, upLimit, lowLimit, 0, String.length(stringA))
  end


end

stringA = "aaaaaa";
stringB = "aa";
Challenge.findFrequency(stringA, stringB)
