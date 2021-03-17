defmodule IgniteReportsGenerator do
  alias IgniteReportsGenerator.Parser

  @employees [
    "Cleiton",
    "Daniele",
    "Danilo",
    "Diego",
    "Giuliano",
    "Jakeliny",
    "Joseph",
    "Mayk",
    "Rafael",
    "Vinicius"
  ]
  def build(filename) do
    filename
    |> Parser.parser()
    |> Enum.reduce(report_accumulator(), fn line, report -> sum_values(line, report) end)
  end

  defp sum_values([name, hours_worked, _day, _month, _yearh], report) do
    Map.put(report, name, report[name] + hours_worked)
  end

  defp report_accumulator() do
    Enum.into(@employees, %{}, &{&1, 0})
  end
end
