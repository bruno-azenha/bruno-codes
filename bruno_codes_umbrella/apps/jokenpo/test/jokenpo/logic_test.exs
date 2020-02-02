defmodule Jokenpo.LogicTest do
  use ExUnit.Case

  alias Jokenpo.Logic

  describe "battle/2" do
    test "rock == rock" do
      assert Logic.battle(:rock, :rock) == :tie
    end

    test "paper == paper" do
      assert Logic.battle(:paper, :paper) == :tie
    end

    test "scizor == scizor" do
      assert Logic.battle(:scizor, :scizor) == :tie
    end

    test "rock > scizor" do
      assert Logic.battle(:rock, :scizor) == :rock
      assert Logic.battle(:scizor, :rock) == :rock
    end

    test "paper > rock" do
      assert Logic.battle(:paper, :rock) == :paper
      assert Logic.battle(:rock, :paper) == :paper
    end

    test "scizor > paper" do
      assert Logic.battle(:scizor, :paper) == :scizor
      assert Logic.battle(:paper, :scizor) == :scizor
    end
  end
end
