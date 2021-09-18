defmodule ListFilter do
  def call(list), do: filter(list)

  defp filter([]), do: 0

  defp filter(list) do
    list
    |> Enum.filter(&(!is_atom(&1)))
    |> Enum.map(fn n ->
      case n do
        n when is_integer(n) -> Integer.to_string(n)
        n when is_float(n) -> Float.to_string(n)
        _ -> n
      end
    end)
    |> Enum.flat_map(fn elem ->
      case Integer.parse(elem) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.map(fn elem ->
      if rem(elem, 2) != 0 do
        elem
      end
    end)
    |> Enum.filter(&(!is_nil(&1)))
    |> length()
  end
end
