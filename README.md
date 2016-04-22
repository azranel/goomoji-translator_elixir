# GoomojiTranslator

Used to translate goomoji code into standard UTF-8 emoji codes.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add goomoji_translator to your list of dependencies in `mix.exs`:

        def deps do
          [{:goomoji_translator, "~> 0.0.1"}]
        end

  2. Ensure goomoji_translator is started before your application:

        def application do
          [applications: [:goomoji_translator]]
        end

## Usage

```elixir
GoomojiTranslator.find_by_goomoji_code("53B")
# => "1F4BC"
```
