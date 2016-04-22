defmodule GoomojiTranslator do
  def find_by_goomoji_code(code) do
    File.read!(Path.expand("./config/file.txt"))
    File.read!(Path.expand("./config/file.txt")) |>
    String.split |>
    Enum.map(fn x -> String.split(x, ";") end) |>
    Enum.filter(fn x -> Enum.at(x, 0) == code end) |>
    Enum.at(0) |>
    tl |>
    hd
  end
end
