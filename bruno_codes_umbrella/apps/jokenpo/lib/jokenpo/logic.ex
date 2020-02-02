defmodule Jokenpo.Logic do
  @moduledoc """
  Jokenpo roles about which move should win in a battle
  """

  def battle(:rock, :rock), do: :tie
  def battle(:paper, :paper), do: :tie
  def battle(:scizor, :scizor), do: :tie

  def battle(:rock, :scizor), do: :rock
  def battle(:scizor, :rock), do: :rock

  def battle(:scizor, :paper), do: :scizor
  def battle(:paper, :scizor), do: :scizor

  def battle(:paper, :rock), do: :paper
  def battle(:rock, :paper), do: :paper
end
