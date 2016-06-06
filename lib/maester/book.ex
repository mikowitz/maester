defmodule Maester.Book do
  @moduledoc """
  Gets book information
  """

  alias Maester.Request, as: Request

  @doc """
  Gets all books with optional filters
  """
  def all(filters \\ %{}) do
    Request.make("books", filters)
  end

  @doc """
  Gets a book by id
  """
  def by_id(id) do
    Request.make("books/#{id}")
  end
end
