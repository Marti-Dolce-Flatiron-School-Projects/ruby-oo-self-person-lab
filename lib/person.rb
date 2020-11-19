# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com

# person.rb
class Person
  # setter and getter (allows changes via methods)
  attr_accessor :happiness, :hygiene, :bank_account
  attr_reader :name, :person

  # Establish defaults
  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  # The happiness and hygiene points
  # should be able to change, however
  # the maximum and minimum points for
  # both happiness and hygiene should
  # be 10 and 0 respectively
  # (1). What is the persons.happiness.index?

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    clean?
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    [friend, self].each { |call| call.happiness += 3 }
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'
      [person, self].each { |call| call.happiness -= 2 }
      'blah blah partisan blah lobbyist'

    when 'weather'
      [person, self].each { |call| call.happiness += 1 }
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end
