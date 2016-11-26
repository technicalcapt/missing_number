defmodule Math do

  @spec find_missing_number(List.t, Range.t) :: non_neg_integer
  def find_missing_number([], _), do: nil
  def find_missing_number(list, range) do
    range_length = Enum.count(range)
    total_range = range_length * (range_length + 1) / 2
    total_list = sum(list)
    IO.puts "#{total_range - total_list}"

    total_range - total_list
  end

  def sum([]), do: []
  def sum(list) when is_list(list), do: do_sum(list, 0)

  defp do_sum([], val), do: val
  defp do_sum([head|tail], current_val) do
    new_val = head + current_val
    do_sum(tail, new_val)
  end
end
