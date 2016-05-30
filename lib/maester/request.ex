defmodule Maester.Request do
  @moduledoc """
  Takes care of making and handling query requests
  """

  @url "http://anapioficeandfire.com/api/"

  @doc """
  Makes a request using the given query
  """
  def make(query) do
    @url <> query
    |> HTTPoison.get
    |> handle_response
  end

  defp handle_response({:ok, %{status_code: 200, body: body}}), do: {:ok, Poison.Parser.parse!(body)}
end
