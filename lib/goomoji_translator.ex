defmodule GoomojiTranslator do
  def find_by_goomoji_code(code) do
    {:ok, file} = File.open "../config/file.txt", [:read]
  end
end
