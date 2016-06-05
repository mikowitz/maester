defmodule Maester.Request do
  @moduledoc """
  Takes care of making and handling query requests
  """

  @url "http://anapioficeandfire.com/api/"

  @doc """
  Makes a request using the given query and filters
  """
  def make(query, filters \\ %{}) do
    make_query(@url <> query, filters)
    |> HTTPoison.get
    |> handle_response
  end

  defp make_query(query, filters) when map_size(filters) == 0, do: query
  defp make_query(query, filters), do: "#{query}?#{URI.encode_query(filters)}"

  defp handle_response({:ok, %{status_code: 200, body: body}}), do: {:ok, Poison.Parser.parse!(body)}
  defp handle_response({:ok, %{status_code: 404}}), do: {:error, "Not found"}
end
