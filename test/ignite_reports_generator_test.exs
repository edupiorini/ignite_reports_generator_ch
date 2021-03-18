defmodule IgniteReportsGeneratorTest do
  use ExUnit.Case

  describe "build/1" do
    test "builds a report" do
      filename = "gen_report_test.csv"

      response = IgniteReportsGenerator.build(filename)

      expected_response = %{
        "all_hours" => %{
          "Cleiton" => 1,
          "Daniele" => 12,
          "Danilo" => 0,
          "Diego" => 0,
          "Giuliano" => 9,
          "Jakeliny" => 14,
          "Joseph" => 3,
          "Mayk" => 5,
          "Rafael" => 0,
          "Vinicius" => 0
        },
        "hours_per_month" => %{
          "Cleiton" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 1,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Daniele" => %{
            "April" => 7,
            "August" => 0,
            "December" => 5,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Danilo" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Diego" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Giuliano" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 9,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Jakeliny" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 8,
            "June" => 0,
            "March" => 6,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Joseph" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 3,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Mayk" => %{
            "April" => 0,
            "August" => 0,
            "December" => 5,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Rafael" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          },
          "Vinicius" => %{
            "April" => 0,
            "August" => 0,
            "December" => 0,
            "February" => 0,
            "January" => 0,
            "July" => 0,
            "June" => 0,
            "March" => 0,
            "May" => 0,
            "November" => 0,
            "October" => 0,
            "September" => 0
          }
        },
        "hours_per_year" => %{
          "Cleiton" => %{
            2016 => 0,
            2017 => 0,
            2018 => 0,
            2019 => 0,
            2020 => 1
          },
          "Daniele" => %{
            2016 => 5,
            2017 => 0,
            2018 => 7,
            2019 => 0,
            2020 => 0
          },
          "Danilo" => %{
            2016 => 0,
            2017 => 0,
            2018 => 0,
            2019 => 0,
            2020 => 0
          },
          "Diego" => %{
            2016 => 0,
            2017 => 0,
            2018 => 0,
            2019 => 0,
            2020 => 0
          },
          "Giuliano" => %{
            2016 => 0,
            2017 => 3,
            2018 => 0,
            2019 => 6,
            2020 => 0
          },
          "Jakeliny" => %{
            2016 => 0,
            2017 => 8,
            2018 => 0,
            2019 => 6,
            2020 => 0
          },
          "Joseph" => %{
            2016 => 0,
            2017 => 3,
            2018 => 0,
            2019 => 0,
            2020 => 0
          },
          "Mayk" => %{
            2016 => 0,
            2017 => 1,
            2018 => 0,
            2019 => 4,
            2020 => 0
          },
          "Rafael" => %{
            2016 => 0,
            2017 => 0,
            2018 => 0,
            2019 => 0,
            2020 => 0
          },
          "Vinicius" => %{
            2016 => 0,
            2017 => 0,
            2018 => 0,
            2019 => 0,
            2020 => 0
          }
        }
      }

      assert response == expected_response
    end
  end
end
