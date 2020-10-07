require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_value)
        @happiness = new_value.clamp(0, 10)
    end

    def hygiene=(new_value)
        @hygiene = new_value.clamp(0, 10)
    end

end

binding.pry