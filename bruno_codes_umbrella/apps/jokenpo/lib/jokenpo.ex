defmodule Jokenpo do
  @moduledoc """
  Stateless Jokenpo game 
  """

  alias Jokenpo.Match
  alias Jokenpo.Logic

  @players [:first_player, :second_player]
  @moves [:rock, :paper, :scizor]

  @doc """
  Creates a new jokenpo match and returns a Jokenpo.Match struct, to be passed together
  with the other commands
  """
  def create_match do
    %Match{}
  end

  @doc """
  Set the move of either player on the match
  """
  def play(%Match{} = match, player, move) when player in @players and move in @moves do
    struct(match, [{player, move}])
  end

  @doc """
  Evaluate who is the winner of the match
  """
  def run(%Match{first_player: first_player_move, second_player: second_player_move} = match) do
    winner =
      case Logic.battle(first_player_move, second_player_move) do
        :tie -> :no_one
        move -> who_played(move, match)
      end

    %{winner: winner}
  end

  defp who_played(move, %Match{first_player: first_player_move, second_player: second_player_move}) do
    cond do
      first_player_move == move -> :first_player
      second_player_move == move -> :second_player
      true -> :no_one
    end
  end
end
