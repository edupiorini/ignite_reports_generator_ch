defmodule IgniteReportsGenerator.Parser do
  def parser(filename) do
    "reports/#{filename}"
    |> File.stream!()
    |> Enum.reduce(%{}, fn line, report ->
      [name, hours_worked, _day, _month, _yearh] = parse_line(line)
      Map.put(report, name, hours_worked)
    end)
  end

  defp parse_line(line) do
    line
    |> String.trim()
    |> String.split(",")
    |> List.update_at(1, &String.to_integer/1)
  end
end
