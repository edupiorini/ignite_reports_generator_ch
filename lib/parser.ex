defmodule IgniteReportsGenerator.Parser do
  @months %{
    1 => "January",
    2 => "February",
    3 => "March",
    4 => "April",
    5 => "May",
    6 => "June",
    7 => "July",
    8 => "August",
    9 => "September",
    10 => "October",
    11 => "November",
    12 => "December"
  }

  def parser(filename) do
    "reports/#{filename}"
    |> File.stream!()
    |> Stream.map(&parse_line/1)
  end

  defp parse_line(line) do
    line
    |> String.trim()
    |> String.split(",")
    |> List.update_at(1, &String.to_integer/1)
    |> List.update_at(3, fn month ->
      month = String.to_integer(month)
      @months[month]
    end)
    |> List.update_at(4, &String.to_integer/1)
  end
end
