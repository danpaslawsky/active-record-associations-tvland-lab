class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    
    def say_that_thing_you_say # using a characters catchphrase
        "#{self.name} always says: #{self.catchphrase}"
    #binding.pry
    end    
end
