defmodule Maester.Request do
  @moduledoc """
  Takes care of making and handling query requests
  """

  alias Poison.Parser

  @url "http://anapioficeandfire.com/api/"

  @doc """
  Makes a request using the given query and filters
  """
  def make(query, filters \\ %{}) do
    make_query(@url <> query, filters)
    |> HTTPoison.get
    |> handle_response
    |> handle_body
  end

  defp make_query(query, filters) when map_size(filters) == 0, do: query
  defp make_query(query, filters), do: "#{query}?#{URI.encode_query(filters)}"

  defp handle_response({:ok, %{status_code: 200, body: body}}), do: {:ok, Parser.parse!(body)}
  defp handle_response({:ok, %{status_code: 400}}), do: {:error, "Invalid request"}
  defp handle_response({:ok, %{status_code: 404}}), do: {:error, "Not found"}

  defp handle_body({:ok, body}) when is_map(body), do: {:ok, body}
  defp handle_body({:ok, body}) when length(body) == 1, do: {:ok, List.first(body)}
  defp handle_body({:ok, body}), do: {:ok, body}
  defp handle_body({:error, message}), do: {:error, message}
end
