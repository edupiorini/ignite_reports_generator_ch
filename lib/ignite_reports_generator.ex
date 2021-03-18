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
  @months [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ]

  def build(filename) do
    filename
    |> Parser.parser()
    |> Enum.reduce(report_accumulator(), fn line, report -> get_sum(line, report) end)
  end

  defp get_sum([name, hours_worked, _day, month, year], %{
         "all_hours" => all_hours,
         "hours_per_month" => hours_per_month,
         "hours_per_year" => hours_per_year
       }) do
    all_hours = Map.put(all_hours, name, all_hours[name] + hours_worked)
    hours_per_month = sum_hours(hours_per_month, name, month, hours_worked)
    hours_per_year = sum_hours(hours_per_year, name, year, hours_worked)

    %{
      "all_hours" => all_hours,
      "hours_per_month" => hours_per_month,
      "hours_per_year" => hours_per_year
    }
  end

  defp sum_hours(map, name, date, hours) do
    Map.put(
      map,
      name,
      Map.put(map[name], date, map[name][date] + hours)
    )
  end

  defp report_accumulator() do
    hours_per_month_list = Enum.into(@months, %{}, &{&1, 0})

    hours_per_year_list = Enum.into(2016..2020, %{}, &{&1, 0})

    %{"all_hours" => %{}, "hours_per_month" => %{}, "hours_per_year" => %{}}
    |> Map.put("all_hours", build_report(0))
    |> Map.put("hours_per_month", build_report(hours_per_month_list))
    |> Map.put("hours_per_year", build_report(hours_per_year_list))
  end

  defp build_report(value), do: Enum.into(@employees, %{}, &{&1, value})
end
