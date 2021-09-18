defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns odd number" do
      list = [1, "3", 9, 29, 6, 9.1, :banana, 43, "banana", 6, "abc"]

      response = ListFilter.call(list)

      expected_response = 6

      assert response == expected_response
    end
  end
end
