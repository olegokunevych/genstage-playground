defmodule Task4Test do
  use ExUnit.Case
  doctest Task4

  test "greets the world when first and last name provided" do
    assert Task4.initials("Emma McClane") == "EM"
  end

  test "greets the world when long name provided" do
    assert Task4.initials("Roberto Artiles Astelarra") == "RAA"
  end

  test "greets the world when first name provided" do
    assert Task4.initials("Emma") == "E"
  end

  test "greets the world when last name provided" do
    assert Task4.initials("McClane") == "M"
  end

  test "greets the world with nil" do
    assert Task4.initials(nil) == "?"
  end

  test "greets the world with empty string" do
    assert Task4.initials("") == "?"
  end
end
