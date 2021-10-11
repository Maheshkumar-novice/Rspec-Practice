#!/usr/bin/env ruby
# frozen_string_literal: true

require 'date'

def leap_year?(year)
  (year % 400).zero? or year % 100 != 0 and (year % 4).zero?
end

class User
  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  attr_reader :name

  def born_in_leap_year?
    leap_year?(Date.parse(@birthday).year)
  end
end
