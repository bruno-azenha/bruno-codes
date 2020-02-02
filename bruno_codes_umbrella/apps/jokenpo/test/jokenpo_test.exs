defmodule JokenpoTest do
  use ExUnit.Case

  describe "create_match/0" do
    test "creates a new match" do
      assert match = Jokenpo.create_match()
    end

    test "created match has both player moves as nil" do
      assert %{first_player: nil, second_player: nil} = Jokenpo.create_match()
    end
  end

  describe "play/2" do
    setup do
      match = Jokenpo.create_match()
      {:ok, %{match: match}}
    end

    test "first player plays rock", %{match: match} do
      assert %{first_player: :rock} = Jokenpo.play(match, :first_player, :rock)
    end

    test "first player plays scizor", %{match: match} do
      assert %{first_player: :scizor} = Jokenpo.play(match, :first_player, :scizor)
    end

    test "first player plays paper", %{match: match} do
      assert %{first_player: :paper} = Jokenpo.play(match, :first_player, :paper)
    end

    test "first player plays an invalid move", %{match: match} do
      assert_raise FunctionClauseError, fn -> Jokenpo.play(match, :first_player, :potato) end
    end

    test "second player plays rock", %{match: match} do
      assert %{second_player: :rock} = Jokenpo.play(match, :second_player, :rock)
    end
  end

  describe "run/1" do
    test "first player wins" do
      result =
        Jokenpo.create_match()
        |> Jokenpo.play(:first_player, :rock)
        |> Jokenpo.play(:second_player, :scizor)
        |> Jokenpo.run()

      assert result == %{winner: :first_player}
    end

    test "second player wins" do
      result =
        Jokenpo.create_match()
        |> Jokenpo.play(:first_player, :rock)
        |> Jokenpo.play(:second_player, :paper)
        |> Jokenpo.run()

      assert result == %{winner: :second_player}
    end

    test "it's a tie" do
      result =
        Jokenpo.create_match()
        |> Jokenpo.play(:first_player, :rock)
        |> Jokenpo.play(:second_player, :rock)
        |> Jokenpo.run()

      assert result == %{winner: :no_one}
    end
  end
end
