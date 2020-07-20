defmodule RomanosTest do
  use ExUnit.Case
  doctest Romanos

  test "1 is converted to I" do
    assert Romanos.to_roman(1) == "I"
  end
  test "2 is converted to II" do
    assert Romanos.to_roman(2) == "II"
  end
  test "3 is converted to III" do
    assert Romanos.to_roman(3) == "III"
  end
  test "4 is converted to IV" do
    assert Romanos.to_roman(4) == "IV"
  end
  test "5 is converted to V" do
    assert Romanos.to_roman(5) == "V"
  end
  test "6 is converted to VI" do
    assert Romanos.to_roman(6) == "VI"
  end
  test "7 is converted to VII" do
    assert Romanos.to_roman(7) == "VII"
  end
  test "8 is converted to VIII" do
    assert Romanos.to_roman(8) == "VIII"
  end
  test "9 is converted to IX" do
    assert Romanos.to_roman(9) == "IX"
  end
  test "10 is converted to X" do
    assert Romanos.to_roman(10) == "X"
  end
  test "19 is converted to XIX" do
    assert Romanos.to_roman(19) == "XIX"
  end
  test "40 is converted to XL" do
    assert Romanos.to_roman(40) == "XL"
  end
  test "31 is converted to XXXI" do
    assert Romanos.to_roman(31) == "XXXI"
  end
  test "52 is converted to LII" do
    assert Romanos.to_roman(52) == "LII"
  end
  test "112 is converted to CXII" do
    assert Romanos.to_roman(112) == "CXII"
  end
  test "448 is converted to CDXLVIII" do
    assert Romanos.to_roman(448) == "CDXLVIII"
  end
  test "444 is converted to CDXLIV" do
    assert Romanos.to_roman(444) == "CDXLIV"
  end
  test "494 is converted to CDXCIV" do
    assert Romanos.to_roman(494) == "CDXCIV"
  end
  test "512 is converted to DXII" do
    assert Romanos.to_roman(512) == "DXII"
  end
  test "949 is converted to CMXLIX" do
    assert Romanos.to_roman(949) == "CMXLIX"
  end
  test "999 is converted to CMXCIX" do
    assert Romanos.to_roman(999) == "CMXCIX"
  end
  test "5423 is converted to MMMMMCDXXIII" do
    assert Romanos.to_roman(5423) == "MMMMMCDXXIII"
  end

  test "big numbers give an error" do
    assert {:error, _} = Romanos.to_roman(99999)
  end
end
