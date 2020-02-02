defmodule JokenpoServerTest do
  use ExUnit.Case

  describe "new_room/0" do
    test "creates room succesfully and it has an id" do
      assert {:ok, %{id: _}} = JokenpoServer.new_room()
    end
  end

  describe "new_room/1" do
    test "creates room succesfully and it has the given id" do
      assert {:ok, %{id: "1"}} = JokenpoServer.new_room("1")
    end

    test "does not create a new room if it already exists" do
      id = UUID.uuid4()
      JokenpoServer.new_room(id)
      assert {:error, :already_exists} == JokenpoServer.new_room(id)
    end
  end
end
