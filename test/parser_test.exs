defmodule IgniteReportsGenerator.ParserTest do
  use ExUnit.Case

  describe "parser/1" do
    test "Parses the given file" do
      filename = "gen_report_test.csv"

      response =
        filename
        |> IgniteReportsGenerator.Parser.parser()
        |> Enum.map(& &1)

      expected_response = [
        ["Daniele", 7, "29", "April", 2018],
        ["Mayk", 4, "9", "December", 2019],
        ["Daniele", 5, "27", "December", 2016],
        ["Mayk", 1, "2", "December", 2017],
        ["Giuliano", 3, "13", "February", 2017],
        ["Cleiton", 1, "22", "June", 2020],
        ["Giuliano", 6, "18", "February", 2019],
        ["Jakeliny", 8, "18", "July", 2017],
        ["Joseph", 3, "17", "March", 2017],
        ["Jakeliny", 6, "23", "March", 2019]
      ]

      expected_response = assert response == expected_response
    end
  end
end
