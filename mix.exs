defmodule GoomojiTranslator.Mixfile do
  use Mix.Project

  def project do
    [app: :goomoji_translator,
     version: "0.0.2",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Used to change goomoji codes into normal emoji codes",
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger, :defmemo]]
  end

  defp package do
    [files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Bartosz Łęcki"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/azranel/goomoji-translator_elixir"}]
  end

  defp deps do
    [{:defmemo, "~> 0.1.0"}]
  end
end
