defmodule GoomojiTranslator do
  import DefMemo

  def find_by_goomoji_code(code) do
    parse_data_file
      |> fetch_utf8_code_from_data(code)
  end

  defmemo parse_data_file do
    File.read!(Path.expand("./config/file.txt"))
      |> String.split
      |> Enum.map(fn x -> String.split(x, ";") end)
  end

  defp fetch_utf8_code_from_data(data, code) do
    data
      |> Enum.filter(fn x -> Enum.at(x, 0) == code end)
      |> Enum.at(0)
      |> tl
      |> hd
  end
end
