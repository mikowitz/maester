defmodule Maester.Book do
  @moduledoc """
  Gets book information
  """

  alias Maester.Request, as: Request

  @doc """
  Gets all books
  """
  def all do
    Request.make("books")
  end

  @doc """
  Gets a book by id
  """
  def by_id(id) do
    Request.make("books/#{id}")
  end
end
