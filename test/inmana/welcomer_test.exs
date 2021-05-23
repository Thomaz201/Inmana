defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "You are very special Banana"}

      assert result == expected_result
    end

    test "when the user is over 18, welcome him/her" do
      params = %{"name" => "Yoda", "age" => "900"}

      result = Welcomer.welcome(params)

      expected_result = {:ok, "Welcome Yoda"}

      assert result == expected_result
    end

    test "when the user is underage, paraphrase Gandalf" do
      params = %{"name" => "Luke", "age" => "16"}

      result = Welcomer.welcome(params)

      expected_result = {:error, "You shall not pass Luke"}

      assert result == expected_result
    end
  end
end
