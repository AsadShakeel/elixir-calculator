defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  Add two numbers
  """
  def add(a, b) do
    a + b
  end

  @doc """
  Subtract two numbers
  """
  def sub(a, b) do
    a - b
  end

  @doc """
  Multiply two numbers
  """
  def mul(a, b) do
    a * b
  end

  @doc """
  Divide two numbers
  """
  def div(a, b) do
    if b == 0 do
      "Can't divide by zero"
    else
      a / b
    end
  end

  @doc """
  Function to operate the calculator
  """
  def start do
    operation = IO.gets("Please enter an operation (+, -, *, /) to perform on two numbers: ") |> String.trim_trailing
    if Enum.member?(["+", "-", "*", "/"], operation) do
      num1 = IO.gets("Please enter the first numbers: ") |> String.trim_trailing
      num1 = String.to_integer(num1)
      num2 = IO.gets("Please enter the second numbers: ") |> String.trim_trailing
      num2 = String.to_integer(num2)
      case operation do
        "+" -> Calculator.add(num1, num2)
        "-" -> Calculator.sub(num1, num2)
        "*" -> Calculator.mul(num1, num2)
        "/" -> Calculator.div(num1, num2)
      end
    else
      "Not a valid operator"
    end
  end
end
