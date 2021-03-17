defmodule IgniteReportsGenerator do
  alias IgniteReportsGenerator.Parser

  @employees [
    "Cleiton",
    "Daniele",
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
  end
end
