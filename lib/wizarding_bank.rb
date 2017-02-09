require 'pry'

class Person
  attr_reader :name
  attr_accessor :cash
  def initialize(name, cash)
  @name = name
  @cash = cash
  end
end

class Bank
  attr_reader :name, :cash_level
  def initialize(name)
    @name = name
  end

  def open_account(person)
    @cash_level = 0
  end

  def deposit(person, amount)
    @cash_level += amount
    person.cash -= amount
  end
end


person1 = Person.new("Minerva", 1000)
person2 = Person.new("Luna", 500)
puts "#{person1.name} has been created with #{person1.cash} galleons in cash."
puts "#{person2.name} has been created with #{person2.cash} galleons in cash."

chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
puts "#{chase.name} has been created."
puts "#{wells_fargo.name} has been created."

chase.open_account(person1)
puts "An account has been opened for #{person1.name} with #{chase.name}."

chase.deposit(person1, 750)
