defmodule JokenpoServer do
  @moduledoc """
  Documentation for JokenpoServer.
  """

  @doc """
  Creates a new Jokenpo room with a random id
  """
  def new_room() do
    {:ok, %{id: UUID.uuid4()}}
  end

  def new_room(id) do
    {:ok, %{id: id}}
  end
end
