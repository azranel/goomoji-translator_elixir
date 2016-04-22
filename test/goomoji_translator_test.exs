defmodule GoomojiTranslatorTest do
  use ExUnit.Case
  doctest GoomojiTranslator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "translator works" do
    assert GoomojiTranslator.find_by_goomoji_code('53B') == '1F4BC'
  end
end
