defmodule RomanosTest do
  use ExUnit.Case
  doctest Romanos

  test "big numbers gives an error" do
    assert {:error, _} = Romanos.to_roman(99999)
  end

  test "less than 0 gives an error" do
    assert {:error, _} = Romanos.to_roman(0)
  end

  test "gives an error when argument is not integer" do
    assert {:error, _} = Romanos.to_roman("a")
  end

  test "1 to 10 roman logic (I to X)" do
    assert Romanos.to_roman(1) == "I"
    assert Romanos.to_roman(2) == "II"
    assert Romanos.to_roman(3) == "III"
    assert Romanos.to_roman(4) == "IV"
    assert Romanos.to_roman(5) == "V"
    assert Romanos.to_roman(6) == "VI"
    assert Romanos.to_roman(7) == "VII"
    assert Romanos.to_roman(8) == "VIII"
    assert Romanos.to_roman(9) == "IX"
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
end
