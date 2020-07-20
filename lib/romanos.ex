defmodule Romanos do
  @moduledoc """
    Gives functions used to convert from arabic numerals to roman numerals
  """

  @doc """
    Convert arabic number to roman number

  ## Examples

    iex> Romanos.to_roman(1)
    "I"

    iex> Romanos.to_roman(4)
    "IV"

    iex> Romanos.to_roman(6)
    "VI"

    iex> Romanos.to_roman(9)
    "IX"

    iex> Romanos.to_roman(11)
    "XI"

  """
  def to_roman(number) do

    unless number < 1 do

      digits = Integer.digits(number)
      digits_len = length(digits)

      case digits_len do
        len when len > 4 ->
          {:error, "Can't convert numbers greater than 9999"}
        len when len <= 4 ->
          Enum.with_index(digits)
          |> Enum.map(fn {digit, index} -> unit_logic_by_pos(digit, digits_len - index) end)
          |> Enum.join
        _ ->
          {:error, "Unknown input type"}
      end
      
    else
      {:error, "Can't convert numbers less than 1"}
    end    
  end

  def unit_logic_by_pos(number, pos) do
    case pos do
      1 -> Romanos.unit_logic(number, "I", "V", "X")
      2 -> Romanos.unit_logic(number, "X", "L", "C")
      3 -> Romanos.unit_logic(number, "C", "D", "M")
      4 -> String.duplicate("M", number)
      _ -> ""
    end
  end

  def unit_logic(number, one_symbol, five_symbol, next_symbol) do
    case number do
      0 ->  ""
      n when n > 0 and n < 4 -> 
        String.duplicate(one_symbol, n)
      4 -> 
        one_symbol <> five_symbol
      5 -> 
        five_symbol
      n when n > 5 and n < 9 -> 
        five_symbol <> String.duplicate(one_symbol, n - 5)
      9 -> 
        one_symbol <> next_symbol
    end
  end
end
