# maester

> An API of Ice and Fire client for Elixir

[![Build Status](https://travis-ci.org/sotojuan/maester.svg?branch=master)](https://travis-ci.org/sotojuan/maester)

## Install

In your `mix.exs`:

```elixir
defp deps do
  [
    { :maester, "~> 1.0.0" }
  ]
end
```

Then run `mix deps.get`.

## Usage

Check out the fancy Hexdocs [here](https://hexdocs.pm/maester/).

You got three modules under `Maester`: `Book`, `Character`, `House`, and `Request`. The first three allow you get the respective resources with a `by_id` and `all` functions. `all` takes it optional filters. See the [API documentation](https://anapioficeandfire.com/Documentation) for possible filters and pass them in as a map.

`Request` exposes a `make` function that allows you to write any query and a filter map. The other modules use it under the hood.

In case of an error, you will get an `{:error, message}` tuple.

## Examples

Getting all characters who are female:

```elixir
Maester.Character.all(%{:gender => "female"})
```

Getting a house by id:

```elixir
Maester.House.by_id(378)
```

You get the idea.

## License

MIT © [Juan Soto](http://juansoto.me)
