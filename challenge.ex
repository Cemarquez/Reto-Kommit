defmodule Challenge do

  def find_frequency_recursive(string_a, string_b,up_limit, low_limit, frequency, length) when up_limit < length do
    sub_string = String.slice(string_a, low_limit..up_limit)
    if  sub_string == string_b do
      find_frequency_recursive(string_a, string_b,up_limit+1, low_limit+1, frequency+1, length)
    else
      find_frequency_recursive(string_a, string_b,up_limit+1, low_limit+1, frequency, length)
    end
  end

  def find_frequency_recursive(_string_a, _string_b,up_limit, _low_limit, frequency, length) when up_limit >= length do
    IO.puts "Frequency: " <> to_string(frequency)
  end

  def find_frequency(string_a, string_b) do
    up_limit = String.length(string_b)-1
    low_limit = 0
    find_frequency_recursive(string_a, string_b, up_limit, low_limit, 0, String.length(string_a))
  end


end

string_a = "aaaaaa";
string_b = "aa";
Challenge.find_frequency(string_a, string_b)
