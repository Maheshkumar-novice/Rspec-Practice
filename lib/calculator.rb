#!/usr/bin/env ruby
# frozen_string_literal: true

# Calculator
class Calculator
  def add(*args)
    args.sum
  end

  def subtract(number1, *rest)
    number1 - add(*rest)
  end

  def multiply(number1, *rest)
    rest.reduce(number1) { |acc, value| acc * value }
  end

  def divide(number1, *rest)
    rest.reduce(number1) { |acc, value| acc / value }
  end
end
