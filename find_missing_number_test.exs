Code.load_file("find_missing_number.exs", __DIR__)

ExUnit.start

defmodule MathTest do
  use ExUnit.Case

  test "given a range and find missing number in a list" do
    expected_number = 5
    assert Math.find_missing_number([1, 3, 4, 2, 6], 1..6) == expected_number
  end
end
