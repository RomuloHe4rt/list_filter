defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(fn elem -> is_number(elem) end)
    |> Enum.count(fn num -> is_odd(num) end)
  end

  defp is_odd(num), do: rem(num, 2) != 0
end
